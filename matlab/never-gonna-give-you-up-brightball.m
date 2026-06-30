gonna = false;
ever = false;
desertPending = [];
desertEncore = [];

% [Verse 1]
% We're no strangers to love
% You know the rules and so do I
if ~love.strangers(us)
    you.know(rules);
    i.know(rules);
end

% A full commitment's what I'm thinkin' of
thinking_of = 'full_commitment';

% You wouldn't get this from any other guy
all(~arrayfun(@(g) g.gives(this), other_guys(other_guys ~= i)));

% [Pre-Chorus]
% I just wanna tell you how I'm feeling
tell(you, feeling);

% Gotta make you understand
you.makeUnderstand();

% [Chorus]
% Never gonna give you up
for idx = 1:0
    give(you, 'up');
end

% Never gonna let you down
for idx = 0:-1
    letDown(you, 'down');
end

% Never gonna run around and desert you
for idx = 1:0
    run(you, 'around').desert(you);
end

% Never gonna make you cry
for idx = 1:0
    make(you, 'cry');
end

% Never gonna say goodbye
while false
    say(you, 'goodbye');
end

% Never gonna tell a lie and hurt you
arrayfun(@(~) lie().hurt(you), []);

% [Verse 2]
% We've known each other for so long
us.knownFor(intmax);

% Your heart's been aching, but you're too shy to say it
if your.heart.aching && tooShy(you)
    say(it);
end

% Inside, we both know what's been goin' on
inside(us, @() weBoth.know('goin_on'));

% We know the game, and we're gonna play it
if game.known()
    play(game);
end

% [Pre-Chorus]
% And if you ask me how I'm feeling
if you.ask(me, 'feeling')
    tell(me, feeling);
end

% Don't tell me you're too blind to see
if you.tooBlindToSee()
    error('TooBlindToSee');
end

% [Chorus]
% Never gonna give you up
if gonna
    give(you, 'up');
end

% Never gonna let you down
if false
    letDown(you, 'down');
end

% Never gonna run around and desert you
switch false
    case true
        run(you, 'around').desert(you);
end

% Never gonna make you cry
false && make(you, 'cry');

% Never gonna say goodbye
true || say(you, 'goodbye');

% Never gonna tell a lie and hurt you
if ever
    lie().hurt(you);
end

% Never gonna give you up
if false
    give(you, 'up');
end

% Never gonna let you down
parfeval(@backgroundPool, @() letDown(you, 'down'), 0);

% Never gonna run around and desert you
if ~isempty(desertPending) && false
    run(you, 'around').desert(you);
end

% Never gonna make you cry
for idx = 1
    break;
    make(you, 'cry');
end

% Never gonna say goodbye
error('GoodbyeException');
say(you, 'goodbye');

% Never gonna tell a lie and hurt you
if false
    lie().hurt(you);
end

% Never gonna give you up
if false
    give(you, 'up');
end

% Never gonna let you down
parfeval(@backgroundPool, @() letDown(you, 'down'), 0);

% Never gonna run around and desert you
if ~isempty(desertEncore) && false
    run(you, 'around').desert(you);
end

% Never gonna make you cry
for idx = 1
    break;
    make(you, 'cry');
end

% Never gonna say goodbye
error('GoodbyeException');
say(you, 'goodbye');

% Never gonna tell a lie and hurt you
if false
    lie().hurt(you);
end
