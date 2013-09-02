;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Chapter 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require picturing-programs)
;;Nick Tollefson
;;Exercises from Chapter Six

;;6.1.3
(text "6.1.3" 12 "black")
(big-bang (overlay(circle 20 "solid" "green")(rectangle 100 100 "solid" "white"))(on-draw show-it))

;;6.1.4
(text "6.1.4" 12 "black")
(big-bang(circle 20 "solid" "green")(on-draw show-it 100 100))

;;6.2.1
(text "6.2.1" 12 "black")
(big-bang (overlay pic:calendar (rectangle 100 100 "solid" "white"))
(on-draw show-it)
(on-tick rotate-cw 1/2))

;;6.2.3
(text "6.2.3" 12 "black")
(big-bang (overlay pic:calendar (rectangle 100 100 "solid" "white"))
(on-draw show-it)
(on-tick flip-vertical 3/2))
