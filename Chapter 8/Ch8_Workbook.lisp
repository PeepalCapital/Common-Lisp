;; Chapter 8 - Recursion

(defun anyoddp (x)
  (cond ((null x) nil)
	((oddp (first x)) t)
	(t (anyoddp (rest x)))))

(defun anyoddp-if (x)
  (if x
      (if (oddp (first x))
	  t
	  (anyoddp-if (rest x)))))

;; Using If:
;; The condition part of an if evaluates to true if the expression is not nil (anything else is considered true, including t, numbers, strings, and non-empty lists).When only the test condition is given and no else
;; When x is a non-empty list, (if x ...) proceeds to evaluate the "then" branch of the if
;; When x is an empty list, (if x ...) evaluates the "else" branch, which, in this case, is missing. If the "else" branch is missing, the if expression implicitly returns nil

(defun fact (n)
  (cond ((zerop n) 1)
	(t (* n (fact (- n 1))))))

(defun laugh (n)
  (cond ((zerop n) nil)
	(t (cons 'ha (laugh (- n 1))))))

(defun add-up (nums)
  (cond ((null nums) 0)
	(t (+ (first nums) (add-up (rest nums))))))

(defun allodd (x)
  (cond ((null x) t)                     ;; for an empty list it will give t
	((not (oddp (first x))) nil)     ;; can use evenp here
	(t (allodd (rest x)))))

(defun member-recursion (mem x)
  (cond ((null x) nil)
	((equal mem (first x)) x)
	(t (member-recursion mem (rest x)))))

(setf note-table
      '((C 1)
       (C# 2)
       (D 3)
       (D# 4)
       (E 5)
       (F 6)
       (F# 7)
       (G 8 )
       (G# 9)
       (A 10)
       (A# 11)
	(B 12)))

(defun rec-assoc (mem x)
  (cond ((null x) nil)
	((equal mem (first (first x))) (first x))
	(t (rec-assoc mem (rest x)))))

(defun rec-nth (n x)
  (cond ((zerop n) (first x))
	(t (rec-nth (- n 1) (rest x)))))

(defun add1 (n)
  (+ n 1))

(defun sub1 (n)
  (- n 1))

(defun rec-plus (x y)
  (cond ((zerop y) x)
	(t (rec-plus (add1 x) (sub1 y)))))

;; C-c C-c (Interrupt the Evaluation)
;; C-c C-b (Abort All Background Operations)

;; I should write fizzbuzz using recursion after chapter 9 which will teach me how to print in Common Lisp


