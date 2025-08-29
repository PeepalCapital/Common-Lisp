;; Chapter 14 - Macros and Compilation

(macroexpand '(incf a))

(defstruct starship
  (name nil)
  (condition 'green))

(macroexpand 'starship)
