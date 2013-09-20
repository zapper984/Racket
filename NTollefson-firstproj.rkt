;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname NTollefson-firstproj) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require picturing-programs)
;;Nick Tollefson
;;9/28/2013
;;First Project

(define outline
  (beside
   (beside
    (beside
     (rectangle 20 0 "solid" "white")
     (rectangle 20 650 "solid" "gray"))
   (above
    (rectangle 300 300 "solid" "dimgray")
    (rectangle 300 350 "solid" "black")))
   (rectangle 20 650 "solid" "gray")))

(define screen 
  (overlay/align "middle" "middle" 
                 outline
                 screen))

(define calculator)

(big-bang calculator(on-draw show-it 400 700 ))
  