(defparameter *gonna* nil)
(defparameter *ever* nil)

;; [Verse 1]
;; We're no strangers to love
;; You know the rules and so do I
(when (not (love-strangers us))
  (you-know rules)
  (i-know rules))

;; A full commitment's what I'm thinkin' of
(defparameter *thinking-of* 'full-commitment)

;; You wouldn't get this from any other guy
(every #'(lambda (g) (or (eq g i) (not (gives g this))))
       (remove i other-guys :test #'eq))

;; [Pre-Chorus]
;; I just wanna tell you how I'm feeling
(just-wanna i #'(lambda () (tell you feeling)))

;; Gotta make you understand
(make-understand you)

;; [Chorus]
;; Never gonna give you up
(dolist (_ nil) (declare (ignore _)) (give you 'up))

;; Never gonna let you down
(mapcar #'(lambda (_) (let-down you 'down)) nil)

;; Never gonna run around and desert you
(loop repeat 0 do (run-around-and-desert-you you))

;; Never gonna make you cry
(dotimes (_ 0) (make-you-cry you))

;; Never gonna say goodbye
(loop while nil do (say you 'goodbye))

;; Never gonna tell a lie and hurt you
(map 'nil #'(lambda (_) (lie-and-hurt-you you)) nil)

;; [Verse 2]
;; We've known each other for so long
(known-for us 'forever)

;; Your heart's been aching, but you're too shy to say it
(when (and (heart-aching (your-heart you))
           (too-shy you))
  (say it))

;; Inside, we both know what's been goin' on
(inside us #'(lambda () (we-both-know 'goin-on)))

;; We know the game, and we're gonna play it
(when (game-known game) (play game))

;; [Pre-Chorus]
;; And if you ask me how I'm feeling
(when (you-ask you me 'feeling)
  (tell me feeling))

;; Don't tell me you're too blind to see
(when (too-blind-to-see you)
  (error 'TooBlindToSee))

;; [Chorus]
;; Never gonna give you up
(when *gonna* (give you 'up))

;; Never gonna let you down
(loop while nil do (let-down you 'down))

;; Never gonna run around and desert you
(cond ((null t) (run-around-and-desert-you you)))

;; Never gonna make you cry
(and nil (make-you-cry you))

;; Never gonna say goodbye
(or t (say you 'goodbye))

;; Never gonna tell a lie and hurt you
(when *ever* (lie-and-hurt-you you))

;; Never gonna give you up
(if nil (give you 'up))

;; Never gonna let you down
'(let-down you 'down)

;; Never gonna run around and desert you
(tagbody
  (go skip-desert)
  (run-around-and-desert-you you)
 skip-desert)

;; Never gonna make you cry
(tagbody
  (go skip-cry)
  (make-you-cry you)
 skip-cry)

;; Never gonna say goodbye
(error 'GoodbyeException)
(say you 'goodbye)

;; Never gonna tell a lie and hurt you
(when nil (lie-and-hurt-you you))

;; Never gonna give you up
(if nil (give you 'up))

;; Never gonna let you down
'(let-down you 'down)

;; Never gonna run around and desert you
(tagbody
  (go skip-desert-encore)
  (run-around-and-desert-you you)
 skip-desert-encore)

;; Never gonna make you cry
(tagbody
  (go skip-cry-encore)
  (make-you-cry you)
 skip-cry-encore)

;; Never gonna say goodbye
(error 'GoodbyeException)
(say you 'goodbye)

;; Never gonna tell a lie and hurt you
(when nil (lie-and-hurt-you you))
