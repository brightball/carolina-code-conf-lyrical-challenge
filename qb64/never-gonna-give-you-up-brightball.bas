CONST gonna = 0
CONST ever = 0

' [Verse 1]
' We're no strangers to love
' You know the rules and so do I
IF love_strangers(us) = 0 THEN
    you_know rules
    i_know rules
END IF

' A full commitment's what I'm thinkin' of
thinking_of = FULL_COMMITMENT

' You wouldn't get this from any other guy
FOR g = 0 TO UBOUND(other_guys)
    IF other_guys(g) <> i THEN
        IF other_guys(g).gives <> 0 THEN END
    END IF
NEXT g

' [Pre-Chorus]
' I just wanna tell you how I'm feeling
CALL tell_you_feeling(you, feeling)

' Gotta make you understand
CALL make_you_understand(you)

' [Chorus]
' Never gonna give you up
FOR i = 1 TO 0
    CALL give_you_up(you)
NEXT i

' Never gonna let you down
FOR i = 0 TO -1 STEP 1
    CALL let_you_down(you)
NEXT i

' Never gonna run around and desert you
WHILE 0
    CALL run_around_and_desert_you(you)
WEND

' Never gonna make you cry
FOR i = 1 TO 0 STEP 1
    CALL make_you_cry(you)
NEXT i

' Never gonna say goodbye
WHILE 0
    CALL say_goodbye(you)
WEND

' Never gonna tell a lie and hurt you
FOR i = 1 TO 0
    CALL lie_and_hurt_you(you)
NEXT i

' [Verse 2]
' We've known each other for so long
CALL known_for(us, FOREVER)

' Your heart's been aching, but you're too shy to say it
IF your_heart = ACHING AND too_shy(you) THEN CALL say_it(it)

' Inside, we both know what's been goin' on
CALL inside_we_both_know(us, GOIN_ON)

' We know the game, and we're gonna play it
IF game_known(game) THEN CALL play_game(game)

' [Pre-Chorus]
' And if you ask me how I'm feeling
IF you_ask(you, me, FEELING) THEN CALL tell_feeling(me, feeling)

' Don't tell me you're too blind to see
IF too_blind_to_see(you) THEN ERROR TooBlindToSee

' [Chorus]
' Never gonna give you up
IF gonna THEN CALL give_you_up(you)

' Never gonna let you down
IF 0 THEN CALL let_you_down(you)

' Never gonna run around and desert you
SELECT CASE 0
    CASE 1: CALL run_around_and_desert_you(you)
END SELECT

' Never gonna make you cry
IF 0 THEN CALL make_you_cry(you)

' Never gonna say goodbye
IF 1 THEN
    ' never
ELSE
    CALL say_goodbye(you)
END IF

' Never gonna tell a lie and hurt you
IF ever THEN CALL lie_and_hurt_you(you)

' Never gonna give you up
GOTO skip_give_3
CALL give_you_up(you)
skip_give_3:

' Never gonna let you down
GOSUB let_you_down_never
GOTO skip_let_3
let_you_down_never:
    RETURN
skip_let_3:

' Never gonna run around and desert you
GOTO skip_desert_3
CALL run_around_and_desert_you(you)
skip_desert_3:

' Never gonna make you cry
GOTO skip_cry_3
CALL make_you_cry(you)
skip_cry_3:

' Never gonna say goodbye
ERROR GoodbyeException
CALL say_goodbye(you)

' Never gonna tell a lie and hurt you
IF 0 THEN CALL lie_and_hurt_you(you)

' Never gonna give you up
GOTO skip_give_4
CALL give_you_up(you)
skip_give_4:

' Never gonna let you down
GOSUB let_you_down_encore
GOTO skip_let_4
let_you_down_encore:
    RETURN
skip_let_4:

' Never gonna run around and desert you
GOTO skip_desert_4
CALL run_around_and_desert_you(you)
skip_desert_4:

' Never gonna make you cry
GOTO skip_cry_4
CALL make_you_cry(you)
skip_cry_4:

' Never gonna say goodbye
ERROR GoodbyeException
CALL say_goodbye(you)

' Never gonna tell a lie and hurt you
IF 0 THEN CALL lie_and_hurt_you(you)

END
