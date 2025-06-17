[
  "@at-root"
  "@debug"
  "@error"
  "@extend"
  "@forward"
  "@mixin"
  "@use"
  "@warn"
] @keyword

"@function" @keyword.function

"@return" @keyword.return

"@include" @keyword.import

[
  "@while"
  "@each"
  "@for"
  "from"
  "through"
  "in"
] @keyword.repeat

(if_clause) @keyword.conditional
(else_clause) @keyword.conditional
(else_if_clause) @keyword.conditional

(single_line_comment) @comment @spell

(function_name) @function

[
  ">="
  "<="
  "=="
] @operator

(mixin_statement
  (name) @function)

(mixin_statement
  (parameters
    (parameter) @variable.parameter))

(function_statement
  (name) @function)

(function_statement
  (parameters
    (parameter) @variable.parameter))

(attribute_selector
 (plain_value) @string)

(keyword_query) @function

; (identifier) @variable
(variable_name) @variable
(variable_value) @variable

(arguments (plain_value) @variable)

(each_statement
  (key) @variable.parameter)

(each_statement
  (value) @variable.parameter)

(each_statement
  (variable_value) @variable.parameter)

(for_statement
  (variable) @variable)

(for_statement
  (_
    (variable_value) @variable.parameter))

(argument) @variable.parameter

(arguments
  (variable_value) @variable.parameter)

[
  "["
  "]"
] @punctuation.bracket

(include_statement
  (identifier) @function)
