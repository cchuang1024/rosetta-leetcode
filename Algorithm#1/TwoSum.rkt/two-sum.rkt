#lang racket

(provide solution)

(define solution
  (lambda (nums target)
    (let loop [(num_list nums)
               (index 0)
               (hist (make-immutable-hash))]
      (if (null? num_list)
          (empty)
          (let* [(item (first num_list)) 
                 (comp (- target item))]
            (if (hash-has-key? hist comp)
                (list (hash-ref hist comp) index)
                (loop (rest num_list) (+ index 1) (hash-set hist item index))))))))
