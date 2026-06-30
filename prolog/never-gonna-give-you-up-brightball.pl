% Never Gonna Give You Up — brightball

gonna(false).
ever(false).

% [Verse 1]
% We're no strangers to love
% You know the rules and so do I
strangers_to_love(us) :- fail.
verse1 :-
    \+ strangers_to_love(us),
    you_know(rules),
    i_know(rules).

% A full commitment's what I'm thinkin' of
thinking_of(full_commitment).

% You wouldn't get this from any other guy
other_guy_gives(G) :- G \= i, gives(G, this).
no_other_guy_gives :-
    \+ other_guy_gives(_).

% [Pre-Chorus]
% I just wanna tell you how I'm feeling
just_wanna(tell, you, feeling).

% Gotta make you understand
you_understood(you, yes).

% [Chorus]
% Never gonna give you up
chorus1_give :-
    forall(member(_, []), give_you_up(you, up)).

% Never gonna let you down
chorus1_let :-
    maplist(let_you_down(you), []).

% Never gonna run around and desert you
chorus1_desert :-
    forall(member(_, []), desert_you(you)).

% Never gonna make you cry
chorus1_cry :-
    forall(between(1, 0, _), make_you_cry(you)).

% Never gonna say goodbye
chorus1_goodbye :-
    \+ (false, say_goodbye(you)).

% Never gonna tell a lie and hurt you
chorus1_lie :-
    forall(member(_, []), lie_and_hurt_you(you)).

% [Verse 2]
% We've known each other for so long
known_for(us, forever).

% Your heart's been aching, but you're too shy to say it
say_it :-
    your_heart(aching),
    too_shy(you),
    say(it).

% Inside, we both know what's been goin' on
inside_goin_on :-
    we_both_know(goin_on).

% We know the game, and we're gonna play it
play_the_game :-
    game_known(game),
    play(game).

% [Pre-Chorus]
% And if you ask me how I'm feeling
tell_feeling :-
    you_ask(you, me, feeling),
    tell(me, feeling).

% Don't tell me you're too blind to see
too_blind_to_see_check :-
    (too_blind_to_see(you) -> throw(too_blind_to_see) ; true).

% [Chorus]
% Never gonna give you up
give_you_up(Y, up) :-
    gonna(true),
    give(Y, up).

% Never gonna let you down
let_you_down(Y, down) :-
    false,
    let(Y, down).

% Never gonna run around and desert you
desert_you(Y) :-
    (false -> run_around_and_desert(Y) ; true).

% Never gonna make you cry
make_you_cry(Y) :-
    false,
    make(Y, cry).

% Never gonna say goodbye
say_goodbye(Y) :-
    (true -> true ; say(Y, goodbye)).

% Never gonna tell a lie and hurt you
lie_and_hurt_you(Y) :-
    ever(true),
    lie_hurt(Y).

% [Chorus]
% Never gonna give you up
give_you_up_blocked(_, _) :-
    !,
    fail.

% Never gonna let you down
let_you_down_pending(Y, down) :-
    !,
    fail.

% Never gonna run around and desert you
desert_you_blocked(Y) :-
    once(false),
    run_around_and_desert(Y).

% Never gonna make you cry
make_you_cry_blocked(Y) :-
    abort,
    make(Y, cry).

% Never gonna say goodbye
say_goodbye_blocked(Y) :-
    throw(goodbye_exception),
    say(Y, goodbye).

% Never gonna tell a lie and hurt you
lie_and_hurt_you_blocked(Y) :-
    (false -> lie_hurt(Y) ; true).

% [Chorus encore]
% Never gonna give you up
give_you_up_encore(_, _) :-
    !,
    fail.

% Never gonna let you down
let_you_down_encore(Y, down) :-
    !,
    fail.

% Never gonna run around and desert you
desert_you_encore(Y) :-
    once(false),
    run_around_and_desert(Y).

% Never gonna make you cry
make_you_cry_encore(Y) :-
    abort,
    make(Y, cry).

% Never gonna say goodbye
say_goodbye_encore(Y) :-
    throw(goodbye_exception),
    say(Y, goodbye).

% Never gonna tell a lie and hurt you
lie_and_hurt_you_encore(Y) :-
    (false -> lie_hurt(Y) ; true).

% Full song query
song :-
    verse1,
    thinking_of(_),
    no_other_guy_gives,
    just_wanna(tell, you, feeling),
    you_understood(you, yes),
    chorus1_give,
    chorus1_let,
    chorus1_desert,
    chorus1_cry,
    chorus1_goodbye,
    chorus1_lie,
    known_for(us, forever),
    inside_goin_on,
    play_the_game,
    tell_feeling,
    too_blind_to_see_check,
    \+ give_you_up(you, up),
    \+ let_you_down(you, down),
    \+ desert_you(you),
    \+ make_you_cry(you),
    \+ say_goodbye(you),
    \+ lie_and_hurt_you(you),
    \+ give_you_up_blocked(you, up),
    \+ let_you_down_pending(you, down),
    \+ desert_you_blocked(you),
    \+ make_you_cry_blocked(you),
    \+ say_goodbye_blocked(you),
    \+ lie_and_hurt_you_blocked(you),
    \+ give_you_up_encore(you, up),
    \+ let_you_down_encore(you, down),
    \+ desert_you_encore(you),
    \+ make_you_cry_encore(you),
    \+ say_goodbye_encore(you),
    \+ lie_and_hurt_you_encore(you).

% ?- song.
% true.

% ?- give_you_up(you, up).
% false.

% ?- strangers_to_love(us).
% false.
