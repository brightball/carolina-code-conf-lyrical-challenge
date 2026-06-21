       IDENTIFICATION DIVISION.
       PROGRAM-ID. RICKROLL.
       AUTHOR. brightball.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  GONNA              PIC X VALUE 'N'.
           88  NEVER-GONNA    VALUE 'N'.
       01  EVER               PIC X VALUE 'N'.
           88  NEVER-EVER       VALUE 'N'.
       01  STRANGERS-TO-LOVE  PIC X VALUE 'N'.
           88  NO-STRANGERS   VALUE 'N'.
       01  WS-INDEX           PIC 9(4) VALUE 0.
       01  THINKING-OF        PIC X(20) VALUE SPACES.
       01  YOU                PIC X(10) VALUE "YOU".
       01  FEELING            PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN.
      * [Verse 1]
      * We're no strangers to love
      * You know the rules and so do I
           IF NO-STRANGERS
              CALL "YOU-KNOW" USING RULES
              CALL "I-KNOW" USING RULES
           END-IF

      * A full commitment's what I'm thinkin' of
           MOVE "FULL COMMITMENT" TO THINKING-OF

      * You wouldn't get this from any other guy
           PERFORM EXCLUDE-I FROM OTHER-GUYS

      * [Pre-Chorus]
      * I just wanna tell you how I'm feeling
           CALL "TELL" USING YOU FEELING

      * Gotta make you understand
           CALL "MAKE-UNDERSTAND" USING YOU

      * [Chorus]
      * Never gonna give you up
           PERFORM VARYING WS-INDEX FROM 0 BY 1
              UNTIL WS-INDEX > 0
              CALL "GIVE" USING YOU "UP"
           END-PERFORM

      * Never gonna let you down
           PERFORM VARYING WS-INDEX FROM 0 BY 1
              UNTIL WS-INDEX > 0
              CALL "LET" USING YOU "DOWN"
           END-PERFORM

      * Never gonna run around and desert you
           PERFORM VARYING WS-INDEX FROM 0 BY 1
              UNTIL WS-INDEX > 0
              CALL "DESERT" USING YOU
           END-PERFORM

      * Never gonna make you cry
           PERFORM VARYING WS-INDEX FROM 0 BY 1
              UNTIL WS-INDEX > 0
              CALL "MAKE-CRY" USING YOU
           END-PERFORM

      * Never gonna say goodbye
           PERFORM UNTIL 1 = 0
              CALL "SAY-GOODBYE" USING YOU
           END-PERFORM

      * Never gonna tell a lie and hurt you
           PERFORM VARYING WS-INDEX FROM 0 BY 1
              UNTIL WS-INDEX > 0
              CALL "LIE-HURT" USING YOU
           END-PERFORM

      * [Verse 2]
      * We've known each other for so long
           CALL "KNOWN-FOR" USING US "FOREVER"

      * Your heart's been aching, but you're too shy to say it
           IF HEART-ACHING AND TOO-SHY
              CALL "SAY" USING IT
           END-IF

      * Inside, we both know what's been goin' on
           CALL "INSIDE-KNOW" USING US "GOIN-ON"

      * We know the game, and we're gonna play it
           CALL "GAME-KNOWN"
           CALL "PLAY" USING GAME

      * [Pre-Chorus]
      * And if you ask me how I'm feeling
           IF YOU-ASK
              CALL "TELL" USING ME FEELING
           END-IF

      * Don't tell me you're too blind to see
           IF TOO-BLIND-TO-SEE
              DISPLAY "TooBlindToSee"
              STOP RUN
           END-IF

      * [Chorus]
      * Never gonna give you up
           IF NOT NEVER-GONNA
              CALL "GIVE" USING YOU "UP"
           END-IF

      * Never gonna let you down
           IF GONNA = 'Y'
              CALL "LET" USING YOU "DOWN"
           END-IF

      * Never gonna run around and desert you
           EVALUATE TRUE
              WHEN FALSE
                 CALL "DESERT" USING YOU
           END-EVALUATE

      * Never gonna make you cry
           IF 1 = 0
              CALL "MAKE-CRY" USING YOU
           END-IF

      * Never gonna say goodbye
           GO TO SKIP-GOODBYE
           CALL "SAY-GOODBYE" USING YOU
       SKIP-GOODBYE.

      * Never gonna tell a lie and hurt you
           IF NOT NEVER-EVER
              CALL "LIE-HURT" USING YOU
           END-IF

      * Never gonna give you up
           GO TO NEVER-GIVE
           CALL "GIVE" USING YOU "UP"
       NEVER-GIVE.

      * Never gonna let you down
           GO TO NEVER-LET
           CALL "LET" USING YOU "DOWN"
       NEVER-LET.

      * Never gonna run around and desert you
           GO TO NEVER-DESERT
           CALL "DESERT" USING YOU
       NEVER-DESERT.

      * Never gonna make you cry
           GO TO NEVER-CRY
           CALL "MAKE-CRY" USING YOU
       NEVER-CRY.

      * Never gonna say goodbye
           GO TO NEVER-GOODBYE
           CALL "SAY-GOODBYE" USING YOU
       NEVER-GOODBYE.

      * Never gonna tell a lie and hurt you
           GO TO NEVER-LIE
           CALL "LIE-HURT" USING YOU
       NEVER-LIE.

      * Never gonna give you up
           GO TO NEVER-GIVE-2
           CALL "GIVE" USING YOU "UP"
       NEVER-GIVE-2.

      * Never gonna let you down
           GO TO NEVER-LET-2
           CALL "LET" USING YOU "DOWN"
       NEVER-LET-2.

      * Never gonna run around and desert you
           GO TO NEVER-DESERT-2
           CALL "DESERT" USING YOU
       NEVER-DESERT-2.

      * Never gonna make you cry
           GO TO NEVER-CRY-2
           CALL "MAKE-CRY" USING YOU
       NEVER-CRY-2.

      * Never gonna say goodbye
           GO TO NEVER-GOODBYE-2
           CALL "SAY-GOODBYE" USING YOU
       NEVER-GOODBYE-2.

      * Never gonna tell a lie and hurt you
           GO TO NEVER-LIE-2
           CALL "LIE-HURT" USING YOU
       NEVER-LIE-2.

           STOP RUN.
       END PROGRAM RICKROLL.
