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
    (rectangle 300 340 "solid" "dimgray")
    (rectangle 300 310 "solid" "black")))
   (rectangle 20 650 "solid" "gray")))

(define title 
  (overlay/offset
   (text "TI-nspire CX         CAS" 20 "white")
   -42 300
   outline))

(define screen 
  (underlay/offset
   title
   10 -180
   (rectangle 250 180 "solid" "white")))

(define keypad:button (rectangle 45 25 "solid" "SlateGray"))
(define gapx (rectangle 15 0 "solid" "white"))
(define gapy (rectangle 0 15 "solid" "white"))

(define keypad:row 
  (beside
   (beside
    (beside
     (beside
      keypad:button
      gapx)
     keypad:button)
    gapx)
  keypad:button))

(define keypad:numbers
  (above
   (above
    (above
     (above
      (above
       (above
        keypad:row
        gapy)
       keypad:row)
      gapy)
     keypad:row)
    gapy)
   keypad:row))

(define keypad:side:button
  (beside
   (beside
    (rectangle 20 25 "solid" "Dim Gray")
    (rectangle 3 25 "solid" "LightSlateGray"))
   (rectangle 20 25 "solid" "Dim Gray")))

(define keypad:side
  (above
   (above
    (above
     (above
      (above
       (above 
        keypad:side:button
        gapy)
       keypad:side:button)
      gapy)
     keypad:side:button)
    gapy)
  keypad:side:button))

(define keypad:mid
  (beside
   (beside
    (beside
     (beside
      keypad:side
      gapx)
     keypad:numbers)
    gapx)
   keypad:side))

(define numpad:shape 
  (overlay/offset
   keypad:mid
   -8 -125
   screen))

(define mid:top
  (overlay/offset
   (beside
    (beside
     (beside
      (beside
       (beside
        (beside
         (overlay
          (text "ctrl" 12 "black")
          (rectangle 35 20 "solid" "CadetBlue"))
         (rectangle 22 0 "solid" "white"))
        (overlay
         (text "shift" 10 "white")
         (rectangle 35 20 "solid" "DimGray")))
       (rectangle 95 0 "solid" "white"))
      (overlay
       (text "var" 12 "white")
       (rectangle 35 20 "solid" "DimGray")))
     (rectangle 22 0 "solid" "white"))
    (overlay
     (text "del" 9 "white")
     (rectangle 35 20 "solid" "DimGray")))
   -8 -30
   numpad:shape))

(define ti-logo
  (overlay/offset
   (text "Texas Instruments" 12 "white")
   0 -314
   mid:top))

(define keyboard:button
  (rectangle 15 15 "solid" "DimGray"))
(define keyboard:sidebutton
  (rectangle 20 15 "solid" "DimGray"))
(define keyboard:buttonG
  (beside 
   keyboard:button
   (rectangle 13 0 "solid" "DimGray")))
(define keyboard:sidebuttonG
  (beside 
   keyboard:sidebutton
   (rectangle 13 0 "solid" "DimGray")))
  
(define keyboard:row
  (beside
   (beside
    (beside
     (beside
      (beside
       (beside
        (beside
         (beside
          keyboard:sidebuttonG
          keyboard:buttonG)
         keyboard:buttonG)
        keyboard:buttonG)
       keyboard:buttonG)
      keyboard:buttonG)
     keyboard:buttonG)
    keyboard:buttonG)
   keyboard:sidebutton))

(define keyboard:rowbot
  (beside
   (beside
    (beside
     (beside
      (beside
       (beside
        (beside
         (beside
          (beside
           (rectangle 0 0 "solid" "white")
           keyboard:buttonG)
          keyboard:buttonG)
         (rectangle 15 15 "solid" "LightSlateGray"))
        (rectangle 13 0 "solid" "DimGray"))
       (rectangle 15 15 "solid" "LightSlateGray"))
      (rectangle 13 0 "solid" "DimGray"))
     (rectangle 15 15 "solid" "LightSlateGray"))
    (rectangle 13 0 "solid" "DimGray"))
   (rectangle 43 15 "solid" "DimGray")))
       
(define keyboard
  (above
   (above
    (above
     (above
   (above
    (above
     keyboard:row
     (rectangle 0 10 "solid" "LightSlateGray"))
     keyboard:row)
    (rectangle 0 10 "solid" "LightSlateGray"))
    keyboard:row)
   (rectangle 0 10 "solid" "LightSlateGray"))
   keyboard:rowbot))
  
(define bot:calc
  (overlay/offset
   keyboard
  -8 -255
   ti-logo))

(define (helloworld text)
  (above text text))


(big-bang  
 (overlay/offset
  (big-bang (text "Hello World" 12 "black")
            (on-draw show-it 250 180)
            (on-tick helloworld 1))
  50 200
  bot:calc)
 (on-draw show-it 400 700 ))
