; (identifier) @variable
((identifier) @variable (#set! "priority" 95))

; function
(function_declaration
  (identifier) @function)

(call
  (variable_operand)
  (identifier) @function.call)

((identifier) @function.builtin
    (#any-of? @function.builtin
     "writeChar"
     "readChar"
     "writeInt"
     "readInt"
     "writeReal"
     "readReal"
     "exit"
     )
 )

(parameter_declaration
  (identifier) @parameter)

(local_variable_declaration
  (identifier) @variable)

(virtual_register_declaration
  (identifier) @variable)

(integer_constant) @constant
(real_constant) @constant
(array_size) @constant


[
 "="
 ] @operator

[
 "load"
 "store"
 "jmp"
 "add"
 "sub"
 "mul"
 "div"
 "phi"
 "mov"
 ] @keyword.operator

[
 "jeq"
 "jne"
 "jlt"
 "jgt"
 "jle"
 "jge"
 ] @conditional

[
 ".func"
 "call"
 ".code"
 ] @keyword.function

[
 "ret"
 ] @keyword.return


["(" ")" "[" "]"] @punctuation.bracket

[
 "int"
 "real"
 ] @type.builtin

["," ":"] @punctuation.delimiter

[
 ".global"
 ".param"
 ".local"
 ".virt"
 ] @storageclass

(comment) @comment
