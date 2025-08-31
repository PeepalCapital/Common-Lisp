;; Chapter 14 - Macros and Compilation

(macroexpand '(incf a))

(defstruct starship
  (name nil)
  (condition 'green))

(macroexpand 'starship)

(defmacro simple-incf (var)
  (list 'setq var (list '+ var 1)))

(defmacro set-nil (var)
  (list 'setq var nil))
