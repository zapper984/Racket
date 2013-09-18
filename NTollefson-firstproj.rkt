;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname NTollefson-firstproj) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require picturing-programs)
;;Nick Tollefson
;;9/28/2013
;;First Project

(define topBarOutline
  (underlay/offset
  (rectangle 1280 20 "solid" "brown")
  0 20
  (crop-top (circle 60 "solid" "black") 60 )))

(define topBarIcons )

(define topBar 
  (underlay/offset 
   topBarOutline
   0 0
   topBarIcons))

(define hud topBar)
(big-bang hud(on-draw show-it 1280 720 ))
  