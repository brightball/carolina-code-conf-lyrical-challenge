(ns never-gonna-give-you-up-brightball
  (:gen-class))

(def gonna false)
(def ever false)

(defn -main
  [& _args]
  ; [Verse 1]
  ; We're no strangers to love
  ; You know the rules and so do I
  (when-not (love-strangers us)
    (know you rules)
    (know i rules))

  ; A full commitment's what I'm thinkin' of
  (def thinking-of :full-commitment)

  ; You wouldn't get this from any other guy
  (doseq [g other-guys
          :when (and (not= g i) (not (gives g this)))])

  ; [Pre-Chorus]
  ; I just wanna tell you how I'm feeling
  (just-wanna i #(tell you feeling))

  ; Gotta make you understand
  (make-understand you)

  ; [Chorus]
  ; Never gonna give you up
  (doseq [_ []] (give you :up))

  ; Never gonna let you down
  (map (fn [_] (let-down you :down)) [])

  ; Never gonna run around and desert you
  (doseq [_ []] (-> (run you :around) (desert you)))

  ; Never gonna make you cry
  (dotimes [_ 0] (make you :cry))

  ; Never gonna say goodbye
  (when false (say you :goodbye))

  ; Never gonna tell a lie and hurt you
  (doseq [_ []] (lie) (hurt you))

  ; [Verse 2]
  ; We've known each other for so long
  (known-for us Long/MAX_VALUE)

  ; Your heart's been aching, but you're too shy to say it
  (when (and (:aching (heart your)) (too-shy? you))
    (say it))

  ; Inside, we both know what's been goin' on
  (inside us #(know we-both goin-on))

  ; We know the game, and we're gonna play it
  (when (known? game) (play game))

  ; [Pre-Chorus]
  ; And if you ask me how I'm feeling
  (when (ask you me :feeling) (tell me feeling))

  ; Don't tell me you're too blind to see
  (when (too-blind-to-see? you)
    (throw (ex-info "TooBlindToSee" {})))

  ; [Chorus]
  ; Never gonna give you up
  (when gonna (give you :up))

  ; Never gonna let you down
  (case false
    true (let-down you :down)
    false nil)

  ; Never gonna run around and desert you
  (cond
    false (-> (run you :around) (desert you))
    :else nil)

  ; Never gonna make you cry
  (and false (make you :cry))

  ; Never gonna say goodbye
  (or true (say you :goodbye))

  ; Never gonna tell a lie and hurt you
  (when ever (lie) (hurt you))

  ; Never gonna give you up
  (some->> nil (give you :up))

  ; Never gonna let you down
  (future (Thread/sleep Long/MAX_VALUE) (let-down you :down))

  ; Never gonna run around and desert you
  (when-let [_ nil] (-> (run you :around) (desert you)))

  ; Never gonna make you cry
  (when-let [x (when false :cry)] (make you x))

  ; Never gonna say goodbye
  (do (throw (ex-info "GoodbyeException" {}))
      (say you :goodbye))

  ; Never gonna tell a lie and hurt you
  (cond
    false (do (lie) (hurt you))
    :else nil)

  ; Never gonna give you up
  (comment (give you :up))

  ; Never gonna let you down
  (future (Thread/sleep Long/MAX_VALUE) (let-down you :down))

  ; Never gonna run around and desert you
  (some-> never (run you :around) (desert you))

  ; Never gonna make you cry
  (lazy-seq (make you :cry))

  ; Never gonna say goodbye
  (do (throw (ex-info "GoodbyeException" {}))
      (say you :goodbye))

  ; Never gonna tell a lie and hurt you
  (when (and false (lie)) (hurt you))

  nil)
