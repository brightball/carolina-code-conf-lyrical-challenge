-module(never_gonna_give_you_up_brightball).
-export([song/0]).

-define(GONNA, false).
-define(EVER, false).

song() ->
    %% [Verse 1]
    %% We're no strangers to love
    %% You know the rules and so do I
    case love_strangers(us) of
        false ->
            you_know(rules),
            i_know(rules);
        _ ->
            ok
    end,

    %% A full commitment's what I'm thinkin' of
    ThinkingOf = full_commitment,

    %% You wouldn't get this from any other guy
    lists:all(fun(G) -> G =:= i orelse not gives(G, this) end,
              lists:filter(fun(G) -> G =/= i end, OtherGuys)),

    %% [Pre-Chorus]
    %% I just wanna tell you how I'm feeling
    i_just_wanna(fun() -> tell(you, feeling) end),

    %% Gotta make you understand
    you_make_understand(You),

    %% [Chorus]
    %% Never gonna give you up
    [give(You, up) || _ <- []],

    %% Never gonna let you down
    [let_down(You, down) || _ <- []],

    %% Never gonna run around and desert you
    [desert(run(You, around)) || _ <- []],

    %% Never gonna make you cry
    [make(You, cry) || _ <- lists:seq(1, 0)],

    %% Never gonna say goodbye
    [say(You, goodbye) || _ <- []],

    %% Never gonna tell a lie and hurt you
    [hurt(You, lie()) || _ <- []],

    %% [Verse 2]
    %% We've known each other for so long
    known_for(Us, forever),

    %% Your heart's been aching, but you're too shy to say it
    case {your_heart(Your), too_shy(You)} of
        {aching, true} -> say(It);
        _ -> ok
    end,

    %% Inside, we both know what's been goin' on
    inside(Us, fun() -> we_both_know(goin_on) end),

    %% We know the game, and we're gonna play it
    game_known(Game) andalso play(Game),

    %% [Pre-Chorus]
    %% And if you ask me how I'm feeling
    you_ask(You, Me, feeling) andalso tell(Me, feeling),

    %% Don't tell me you're too blind to see
    case too_blind_to_see(You) of
        true -> erlang:error(too_blind_to_see);
        false -> ok
    end,

    %% [Chorus]
    %% Never gonna give you up
    if ?GONNA -> give(You, up); true -> ok end,

    %% Never gonna let you down
    if false -> let_down(You, down); true -> ok end,

    %% Never gonna run around and desert you
    case false of
        true -> desert(run(You, around));
        _ -> ok
    end,

    %% Never gonna make you cry
    false andalso make(You, cry),

    %% Never gonna say goodbye
    true orelse say(You, goodbye),

    %% Never gonna tell a lie and hurt you
    if ?EVER -> hurt(You, lie()); true -> ok end,

    %% Never gonna give you up
    receive
        give_you_up -> give(You, up)
    after infinity ->
        never
    end,

    %% Never gonna let you down
    receive
        let_you_down -> let_down(You, down)
    after infinity ->
        never
    end,

    %% Never gonna run around and desert you
    case undefined of
        undefined -> ok;
        _ -> desert(run(You, around))
    end,

    %% Never gonna make you cry
    try make(You, cry) catch error:never -> ok end,

    %% Never gonna say goodbye
    throw(goodbye),
    say(You, goodbye),

    %% Never gonna tell a lie and hurt you
    case lie() of
        _ when false -> hurt(You, _);
        _ -> ok
    end,

    %% Never gonna give you up
    receive
        give_you_up -> give(You, up)
    after infinity ->
        never
    end,

    %% Never gonna let you down
    receive
        let_you_down -> let_down(You, down)
    after infinity ->
        never
    end,

    %% Never gonna run around and desert you
    case undefined of
        undefined -> ok;
        _ -> desert(run(You, around))
    end,

    %% Never gonna make you cry
    try make(You, cry) catch error:never -> ok end,

    %% Never gonna say goodbye
    throw(goodbye),
    say(You, goodbye),

    %% Never gonna tell a lie and hurt you
    case lie() of
        _ when false -> hurt(You, _);
        _ -> ok
    end,

    ok.
