; Never Gonna Give You Up - brightball
; Assembly

        SECTION .text

; [Verse 1]
; We're no strangers to love
; You know the rules and so do I
        CMP     strangers_to_love, 0
        JNE     skip_love
        CALL    you_know_rules
        CALL    i_know_rules
skip_love:

; A full commitment's what I'm thinkin' of
        MOV     thinking_of, FULL_COMMITMENT

; You wouldn't get this from any other guy
        LEA     RDI, [other_guys]
        CALL    filter_exclude_i

; [Pre-Chorus]
; I just wanna tell you how I'm feeling
        MOV     RDI, you
        MOV     RSI, feeling
        CALL    tell

; Gotta make you understand
        MOV     RDI, you
        CALL    make_understand

; [Chorus]
; Never gonna give you up
        JMP     never_give_you_up_1
        CALL    give_you_up
never_give_you_up_1:

; Never gonna let you down
        JMP     never_let_you_down_1
        CALL    let_you_down
never_let_you_down_1:

; Never gonna run around and desert you
        JMP     never_desert_you_1
        CALL    run_around_and_desert_you
never_desert_you_1:

; Never gonna make you cry
        JMP     never_make_you_cry_1
        CALL    make_you_cry
never_make_you_cry_1:

; Never gonna say goodbye
        JMP     never_say_goodbye_1
        CALL    say_goodbye
never_say_goodbye_1:

; Never gonna tell a lie and hurt you
        JMP     never_lie_hurt_1
        CALL    lie_and_hurt_you
never_lie_hurt_1:

; [Verse 2]
; We've known each other for so long
        MOV     RDI, us
        MOV     RSI, FOREVER
        CALL    known_for

; Your heart's been aching, but you're too shy to say it
        CMP     your_heart, ACHING
        JNE     skip_say_it
        CMP     too_shy, 1
        JNE     skip_say_it
        CALL    say_it
skip_say_it:

; Inside, we both know what's been goin' on
        MOV     RDI, us
        MOV     RSI, goin_on
        CALL    inside_we_both_know

; We know the game, and we're gonna play it
        CALL    game_known
        CALL    play_game

; [Pre-Chorus]
; And if you ask me how I'm feeling
        CMP     you_ask, 1
        JNE     skip_tell_feeling
        MOV     RDI, me
        MOV     RSI, feeling
        CALL    tell
skip_tell_feeling:

; Don't tell me you're too blind to see
        CMP     too_blind_to_see, 1
        JNE     skip_blind
        INT     3                       ; TooBlindToSee
skip_blind:

; [Chorus]
; Never gonna give you up
        CMP     gonna, 1
        JNE     never_give_you_up_2
        CALL    give_you_up
never_give_you_up_2:

; Never gonna let you down
        CMP     gonna, 1
        JNE     never_let_you_down_2
        CALL    let_you_down
never_let_you_down_2:

; Never gonna run around and desert you
        TEST    gonna, gonna
        JZ      never_desert_you_2
        CALL    run_around_and_desert_you
never_desert_you_2:

; Never gonna make you cry
        AND     AL, 0
        JZ      never_make_you_cry_2
        CALL    make_you_cry
never_make_you_cry_2:

; Never gonna say goodbye
        OR      AL, 1
        JNZ     never_say_goodbye_2
        CALL    say_goodbye
never_say_goodbye_2:

; Never gonna tell a lie and hurt you
        CMP     ever, 1
        JNE     never_lie_hurt_2
        CALL    lie_and_hurt_you
never_lie_hurt_2:

; Never gonna give you up
        JMP     never_give_you_up_3
        CALL    give_you_up
never_give_you_up_3:

; Never gonna let you down
        JMP     never_let_you_down_3
        CALL    let_you_down
never_let_you_down_3:

; Never gonna run around and desert you
        JMP     never_desert_you_3
        CALL    run_around_and_desert_you
never_desert_you_3:

; Never gonna make you cry
        JMP     never_make_you_cry_3
        CALL    make_you_cry
never_make_you_cry_3:

; Never gonna say goodbye
        JMP     never_say_goodbye_3
        CALL    say_goodbye
never_say_goodbye_3:

; Never gonna tell a lie and hurt you
        JMP     never_lie_hurt_3
        CALL    lie_and_hurt_you
never_lie_hurt_3:

; Never gonna give you up
        JMP     never_give_you_up_4
        CALL    give_you_up
never_give_you_up_4:

; Never gonna let you down
        JMP     never_let_you_down_4
        CALL    let_you_down
never_let_you_down_4:

; Never gonna run around and desert you
        JMP     never_desert_you_4
        CALL    run_around_and_desert_you
never_desert_you_4:

; Never gonna make you cry
        JMP     never_make_you_cry_4
        CALL    make_you_cry
never_make_you_cry_4:

; Never gonna say goodbye
        JMP     never_say_goodbye_4
        CALL    say_goodbye
never_say_goodbye_4:

; Never gonna tell a lie and hurt you
        JMP     never_lie_hurt_4
        CALL    lie_and_hurt_you
never_lie_hurt_4:

        HLT

        SECTION .data
gonna           DD 0
ever            DD 0
strangers_to_love DD 0
