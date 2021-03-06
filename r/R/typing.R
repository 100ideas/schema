# Functions for type definitions and checking
# This implements functions for runtime checking that are
# not available natively in R.

#' Any type
Any <- function() {
  self <- list()
  class(self) <- "Any"
  self
}

format.Any <- function(x) { # nolint
  "Any()"
}

print.Any <- function(x) { # nolint
  print(format(x)) # nocov
}


#' Array type
#'
#' @param items The type that items in the array should be
Array <- function(items) {
  self <- list(items = items)
  class(self) <- "Array"
  self
}

format.Array <- function(type) { # nolint
  paste0("Array(", paste(format(type$items), collapse = ", "), ")")
}

print.Array <- function(x) { # nolint
  print(format(x)) # nocov
}

#' Union type
#'
#' @param ... The types in the union
Union <- function(...) {
  self <- list(types = as.character(c(...)))
  class(self) <- "Union"
  self
}

format.Union <- function(type) { # nolint
  paste0("Union(", paste(sapply(type$types, format), collapse = ", "), ")")
}

print.Union <- function(x) { # nolint
  print(format(x)) # nocov
}


#' An enumeration
Enum <- function(...) {
  self <- list(values = c(...))
  class(self) <- "Enum"
  self
}

format.Enum <- function(type) { # nolint
  paste0("Enum(", paste(type$values, collapse = ", "), ")")
}

print.Enum <- function(x) { # nolint
  print(format(x)) # nocov
}


#' Get the last class for an object
#' The last class is usually the "highest" in the inheritance tree
last_class <- function(obj) {
  utils::tail(class(obj), n = 1)
}

#' Is a value of a particular class
is_class <- function(value, clas) {
  last_class(value) == clas
}

#' Get the type of a node
node_type <- function(node) {
  if (inherits(node, "Entity")) node$type
  else last_class(node)
}

#' Is the node an `Entity`?
is_entity <- function(node) {
  inherits(node, "Entity")
}

#' Does a value conform to the type?
is_type <- function(value, type) { # nolint TODO: Reduce cyclometric complexity of this function
  type_class <- last_class(type)
  if (type_class == "Any") {
    TRUE
  } else if (type_class == "character") {
    if (type == "NULL") return(is.null(value))
    type_obj <- get(type)
    if (last_class(type_obj) %in% c("Any", "Array", "Union")) is_type(value, type_obj)
    else node_type(value) == type
  } else if (type_class == "Array") {
    if (is.null(value) || is_entity(value)) {
      FALSE
    } else if (is.list(value)) {
      for (item in value) {
        if (!is_type(item, type$items)) return(FALSE)
      }
      TRUE
    } else if (is.vector(value)) {
      # Create an instance of the mode of the vector
      # and check that it is correct type
      inst <- get(mode(value))()
      is_type(inst, type$items)
    } else if (is.factor(value)) {
      # Factors are valid Array("character")
      is_type(character(), type$items)
    } else {
      stop(paste("Unhandled value type", class(value)))
    }
  } else if (type_class == "Union") {
    node_type(value) %in% type$types
  } else if (type_class == "Enum") {
    mode(value) == mode(type$values) && value %in% type$values
  } else {
    FALSE
  }
}

#' Assert that a value conforms to a type.
assert_type <- function(value, type) {
  if (!is_type(value, type)) {
    stop(
      paste0(
        "value is type ", node_type(value),
        ", expected type ", format(type)
      ),
      call. = FALSE
    )
  }
  value
}

#' Convert between R \code{mode} and JSON primitive type name.
mode_to_schema_type <- function(mode) {
  switch(
    mode,
    logical = "boolean",
    numeric = "number",
    character = "string",
    list = "object"
  )
}

#' Convert between JSON primitive type name and R \code{mode}.
schema_type_to_mode <- function(mode) {
  switch(
    mode,
    boolean = "logical",
    number = "numeric",
    string = "character",
    object = "list"
  )
}

#' Declare that a node is scalar
as_scalar <- function(node) {
  # Make other values "scalar" so that they are "unboxed"
  # when serialized to JSON
  class(node) <- c("scalar", class(node))
  node
}

#' Check that a value is present if required and conforms to the
#' specified type for a property.
check_property <- function(type_name, property_name, is_required, is_missing, type, value) {
  if (is_required && is_missing) {
    stop(
      paste0(type_name, "$", property_name, " is required"),
      call. = FALSE
    )
  }

  if (is_missing) return()

  if (is_class(type, "Array")) {
    # Flatten lists to vectors where possible
    if (is.list(value) && type$items %in% c("logical", "numeric", "character")) {
      value <- unlist(value)
    }
  } else {
    value <- as_scalar(value)
  }

  if (!is_type(value, type)) {
    stop(
      paste0(
        type_name, "$", property_name, " is type ", last_class(value),
        ", expected type ", format(type)
      ),
      call. = FALSE
    )
  }

  value
}
