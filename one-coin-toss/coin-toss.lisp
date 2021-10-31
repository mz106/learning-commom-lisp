(defun coin-toss ()
(let ((number (random 2 (make-random-state t))))
        (if (= number 0)
            ; (format t "Heads")
            ; (format t "Tails")
            "heads"
            "tails"
        )))

; (coin-toss)

(defun prompt ()
    (format t "Please enter heads or tails: ")
    (force-output)

    (let ((guess (string-downcase (read-line))))
        (if (or (string= guess "heads") 
        (string= guess "tails"))
            guess   
            (prompt)
        )
    ))

(defun game ()
    (if (string= (prompt)
                 (coin-toss))
        (format t "You Win!~%")
        (format t "You Lose!~%"))          
)

(game)