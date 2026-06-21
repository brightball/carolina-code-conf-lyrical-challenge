program NeverGonnaGiveYouUpBrightball;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  gonna = False;
  ever = False;

procedure Song;
begin
  // [Verse 1]
  // We're no strangers to love
  // You know the rules and so do I
  if not Love.Strangers(us) then
  begin
    you.Know(rules);
    i.Know(rules);
  end;

  // A full commitment's what I'm thinkin' of
  thinkingOf := FullCommitment;

  // You wouldn't get this from any other guy
  for g := Low(otherGuys) to High(otherGuys) do
    if (otherGuys[g] <> i) and otherGuys[g].Gives(this) then
      Assert(False, 'You wouldn''t get this from any other guy');

  // [Pre-Chorus]
  // I just wanna tell you how I'm feeling
  i.JustWanna(procedure begin Tell(you, feeling); end);

  // Gotta make you understand
  you.MakeUnderstand;

  // [Chorus]
  // Never gonna give you up
  for idx := 1 to 0 do
    Give(you, Up);

  // Never gonna let you down
  for idx := 0 downto 1 do
    if False then
      LetDown(you, Down);

  // Never gonna run around and desert you
  while False do
    Run(you, Around).Desert(you);

  // Never gonna make you cry
  for idx := 1 to 0 do
    Make(you, Cry);

  // Never gonna say goodbye
  while False do
    Say(you, Goodbye);

  // Never gonna tell a lie and hurt you
  if Length(emptyGuys) > 0 then
    Lie.Hurt(you);

  // [Verse 2]
  // We've known each other for so long
  us.KnownFor(MaxInt);

  // Your heart's been aching, but you're too shy to say it
  if your.Heart.Aching and TooShy(you) then
    Say(it);

  // Inside, we both know what's been goin' on
  Inside(us, procedure begin WeBoth.Know(GoinOn); end);

  // We know the game, and we're gonna play it
  if game.Known then
    Play(game);

  // [Pre-Chorus]
  // And if you ask me how I'm feeling
  if you.Ask(me, Feeling) then
    Tell(me, feeling);

  // Don't tell me you're too blind to see
  if you.TooBlindToSee then
    raise ETooBlindToSee.Create('TooBlindToSee');

  // [Chorus]
  // Never gonna give you up
  if gonna then
    Give(you, Up);

  // Never gonna let you down
  while False do
    LetDown(you, Down);

  // Never gonna run around and desert you
  case False of
    True: Run(you, Around).Desert(you);
  end;

  // Never gonna make you cry
  if False then
    Make(you, Cry);

  // Never gonna say goodbye
  if True then
  else
    Say(you, Goodbye);

  // Never gonna tell a lie and hurt you
  if ever then
    Lie.Hurt(you);

  // Never gonna give you up
  {$IF FALSE}
  Give(you, Up);
  {$ENDIF}

  // Never gonna let you down
  if not Assigned(letPending) then
    LetDown(you, Down);

  // Never gonna run around and desert you
  goto SkipDesert;
  Run(you, Around).Desert(you);
SkipDesert:

  // Never gonna make you cry
  goto SkipCry;
  Make(you, Cry);
SkipCry:

  // Never gonna say goodbye
  raise EGoodbyeException.Create('GoodbyeException');
  Say(you, Goodbye);

  // Never gonna tell a lie and hurt you
  if False then
    Lie.Hurt(you);

  // Never gonna give you up
  {$IF FALSE}
  Give(you, Up);
  {$ENDIF}

  // Never gonna let you down
  if not Assigned(letEncore) then
    LetDown(you, Down);

  // Never gonna run around and desert you
  goto SkipDesertEncore;
  Run(you, Around).Desert(you);
SkipDesertEncore:

  // Never gonna make you cry
  goto SkipCryEncore;
  Make(you, Cry);
SkipCryEncore:

  // Never gonna say goodbye
  raise EGoodbyeException.Create('GoodbyeException');
  Say(you, Goodbye);

  // Never gonna tell a lie and hurt you
  if False then
    Lie.Hurt(you);
end;

var
  emptyGuys: array of Guy;
  letPending: Pointer;
  letEncore: Pointer;

begin
  SetLength(emptyGuys, 0);
  letPending := nil;
  letEncore := nil;
  Song;
end.
