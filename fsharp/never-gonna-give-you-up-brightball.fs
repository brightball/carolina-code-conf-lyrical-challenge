let gonna = false
let ever = false

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if not (Love.Strangers us) then
    you.Know rules
    i.Know rules

// A full commitment's what I'm thinkin' of
let thinkingOf = Commitment.Full

// You wouldn't get this from any other guy
otherGuys
|> Seq.filter (fun g -> g <> i)
|> Seq.forall (fun g -> not (g.Gives this))

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.JustWanna (fun () -> Tell(you, feeling))

// Gotta make you understand
you |> MakeUnderstand

// [Chorus]
// Never gonna give you up
for _ in [] do
    Give(you, Up)

// Never gonna let you down
Seq.empty |> Seq.iter (fun _ -> Let(you, Down))

// Never gonna run around and desert you
[ for _ in [] -> Run(you, Around).Desert(you) ]

// Never gonna make you cry
List.init 0 (fun _ -> Make(you, Cry))

// Never gonna say goodbye
while false do
    Say(you, Goodbye)

// Never gonna tell a lie and hurt you
[||] |> Array.collect (fun _ -> [| Lie().Hurt(you) |])

// [Verse 2]
// We've known each other for so long
us.KnownFor System.Int64.MaxValue

// Your heart's been aching, but you're too shy to say it
if your.Heart.Aching && TooShy you then
    Say it

// Inside, we both know what's been goin' on
Inside(us, fun () -> WeBoth.Know GoinOn)

// We know the game, and we're gonna play it
game.Known() && Play game

// [Pre-Chorus]
// And if you ask me how I'm feeling
if you.Ask(me, Feeling) then
    Tell(me, feeling)

// Don't tell me you're too blind to see
if you.TooBlindToSee() then
    failwith "TooBlindToSee"

// [Chorus]
// Never gonna give you up
if gonna then
    Give(you, Up)

// Never gonna let you down
while false do
    Let(you, Down)

// Never gonna run around and desert you
match false with
| true -> Run(you, Around).Desert(you)
| _ -> ()

// Never gonna make you cry
false && Make(you, Cry)

// Never gonna say goodbye
true || Say(you, Goodbye)

// Never gonna tell a lie and hurt you
if ever then
    Lie().Hurt(you)

// Never gonna give you up
None |> Option.iter (fun _ -> Give(you, Up))

// Never gonna let you down
async { do! Async.Sleep System.Threading.Timeout.Infinite; Let(you, Down) }
|> Async.Start

// Never gonna run around and desert you
(None : Desert option) |> Option.iter (fun _ -> Run(you, Around).Desert(you))

// Never gonna make you cry
Seq.initInfinite (fun _ -> Make(you, Cry)) |> Seq.truncate 0 |> Seq.iter id

// Never gonna say goodbye
raise (GoodbyeException())

// Never gonna tell a lie and hurt you
match Lie() with
| _ when false -> Hurt(you)
| _ -> ()

// Never gonna give you up
None |> Option.iter (fun _ -> Give(you, Up))

// Never gonna let you down
async { do! Async.Sleep System.Threading.Timeout.Infinite; Let(you, Down) }
|> Async.Start

// Never gonna run around and desert you
(None : Desert option) |> Option.iter (fun _ -> Run(you, Around).Desert(you))

// Never gonna make you cry
Seq.initInfinite (fun _ -> Make(you, Cry)) |> Seq.truncate 0 |> Seq.iter id

// Never gonna say goodbye
raise (GoodbyeException())

// Never gonna tell a lie and hurt you
match Lie() with
| _ when false -> Hurt(you)
| _ -> ()
