(defvar *list* '(1 3 (5 7) 9))
(cdr (car (cdr (cdr *list*))))

(defvar *list* '(1 (2 (3 (4 (5 (6 (7))))))))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car *list*)))))))))))))

(defun my-reverse (lst)
  (defun iter (lst result)
    (if (eql (cdr lst) nil)
	(cons (car lst) result)
	(iter (cdr lst) (cons (car lst) result))))
  (iter lst nil))

(defun last-pair (lst)
  (if (eql (cdr lst) nil)
      lst
      (last-pair (cdr lst))))


;; iter '(1 2 3) nil
;; iter '(2 3) '(1 nil)
;; iter '(3) '(2 1 nil)
;; iter '() '(3 2 1 nil)

(defun list-equal (l1 l2)
  (if (and (and (listp l1) (listp l2))
	   (and (not (eql l1 nil)) (not (eq l2 nil))))
      (and (list-equal (car l1) (car l2))
	   (list-equal (cdr l1) (cdr l2)))
      (eql l1 l2)))
      
