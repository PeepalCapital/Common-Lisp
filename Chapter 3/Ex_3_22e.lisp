(defun mid-add1 (x)
  (list (car x) (+ (car (cdr x)) 1) (car (cdr (cdr x)))))
