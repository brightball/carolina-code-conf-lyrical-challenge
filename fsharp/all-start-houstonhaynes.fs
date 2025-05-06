open FSharp.Somebody

// Verse 1
let someone = tellMe (world.IsGonna rollMe)
let sharpness = tools |> List.find (fun tool -> tool.Location = shed)
let observation = 
    match person.Expression with
    | Looking(Kind.Dumb) & FingerPosition(thumb, forehead) -> 
        Shape.Parse("L")
    | _ -> Shape.Default

// Pre-Chorus
let rec years = 
    seq {
        yield coming
        yield! years // they don't stop coming
    }

// Follow rules and execute
rules |> Seq.iter (fun r -> hit(ground, Running))

// Check conditions
if (not (makesSense livingFor Fun)) then
    brain.Intelligence <- brain.Intelligence + 1
    head.Intelligence <- head.Intelligence - 1

// Evaluate options
let todoList = [ "much"; "much" ] |> List.collect (fun x -> [x + "ToDo"; x + "ToSee"])
match streets with
| Backstreets when whatIsWrong = None -> follow(Backstreets)
| _ -> 
    if (not go) then know <- None
    if (not glow) then shine <- None

// Chorus
let youAre = 
    match current with
    | AllStar -> 
        game.Status <- On
        play()
    | RockStar ->
        show.Status <- On
        getPaid()
    | _ -> ()

// Important facts
let glittering = 
    if (all) then Gold
    else NotGold

// Exception handling
try
    mold.Break()
with
| :? ShootingStar as star -> handleException star
| _ -> reraise()

// Verse 2
let temperature = 
    match place with
    | Cool -> 
        if age < older then Bundle.Up()
        temperature.Trend <- Decreasing
    | _ -> defaultTemp

// Science debate
let scientists = disagree(meteorMen, satellitePicture.Measurements)

// Environmental conditions
let rec checkConditions conditions =
    match conditions with
    | Ice when thickness.IsGettingThin -> Skate.WithCaution()
    | Water when temperature.Trend = Increasing -> swim()
    | World.OnFire -> 
        if yourWorld = Fire then 
            preferred <- true
            boredom <- false
    | _ -> checkConditions defaultConditions

// Chorus repeated
module Chorus =
    let repeat previous = 
        let youAre = AllStar
        game.Status <- On
        play()
        let youAlso = RockStar
        show.Status <- On
        getPaid()
        
        if all(glitters) then Gold else NotGold
        
        shootingStars 
        |> List.filter isActive
        |> List.iter (fun star -> mold.TryBreak(star))