let gonna = false
let ever = false

(* [Verse 1] *)
(* We're no strangers to love *)
(* You know the rules and so do I *)
if not (Love.strangers us) then begin
  you#know rules;
  i#know rules
end

(* A full commitment's what I'm thinkin' of *)
let thinking_of = FullCommitment

(* You wouldn't get this from any other guy *)
other_guys
|> List.filter (fun g -> g <> i)
|> List.for_all (fun g -> not (g#gives this))

(* [Pre-Chorus] *)
(* I just wanna tell you how I'm feeling *)
i#just_wanna (fun () -> tell you feeling)

(* Gotta make you understand *)
you#make_understand ()

(* [Chorus] *)
(* Never gonna give you up *)
List.iter (fun _ -> give you Up) []

(* Never gonna let you down *)
List.map (fun _ -> let_down you Down) []

(* Never gonna run around and desert you *)
for _ = 1 to 0 do run you Around#desert you done

(* Never gonna make you cry *)
List.init 0 (fun _ -> make you Cry)

(* Never gonna say goodbye *)
while false do say you Goodbye done

(* Never gonna tell a lie and hurt you *)
List.iter (fun _ -> lie ()#hurt you) []

(* [Verse 2] *)
(* We've known each other for so long *)
us#known_for max_int

(* Your heart's been aching, but you're too shy to say it *)
if your#heart#aching && too_shy you then say it

(* Inside, we both know what's been goin' on *)
inside us (fun () -> we_both#know GoinOn)

(* We know the game, and we're gonna play it *)
if game#known () then play game

(* [Pre-Chorus] *)
(* And if you ask me how I'm feeling *)
if you#ask me Feeling then tell me feeling

(* Don't tell me you're too blind to see *)
if you#too_blind_to_see () then raise TooBlindToSee

(* [Chorus] *)
(* Never gonna give you up *)
if gonna then give you Up

(* Never gonna let you down *)
while false do let_down you Down done

(* Never gonna run around and desert you *)
match false with
| true -> run you Around#desert you
| _ -> ()

(* Never gonna make you cry *)
false && make you Cry

(* Never gonna say goodbye *)
true || say you Goodbye

(* Never gonna tell a lie and hurt you *)
if ever then lie ()#hurt you

(* Never gonna give you up *)
None |> Option.iter (fun _ -> give you Up)

(* Never gonna let you down *)
ignore (Lwt.wait (Lwt.task ()))

(* Never gonna run around and desert you *)
None |> Option.iter (fun _ -> run you Around#desert you)

(* Never gonna make you cry *)
Error () |> Result.iter (fun _ -> make you Cry)

(* Never gonna say goodbye *)
raise GoodbyeException;
say you Goodbye

(* Never gonna tell a lie and hurt you *)
match lie () with
| _ when false -> hurt you
| _ -> ()

(* Never gonna give you up *)
None |> Option.iter (fun _ -> give you Up)

(* Never gonna let you down *)
ignore (Lwt.wait (Lwt.task ()))

(* Never gonna run around and desert you *)
None |> Option.iter (fun _ -> run you Around#desert you)

(* Never gonna make you cry *)
Error () |> Result.iter (fun _ -> make you Cry)

(* Never gonna say goodbye *)
raise GoodbyeException;
say you Goodbye

(* Never gonna tell a lie and hurt you *)
match lie () with
| _ when false -> hurt you
| _ -> ()
