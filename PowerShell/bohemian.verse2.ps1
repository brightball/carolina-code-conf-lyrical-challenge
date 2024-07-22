# Define the status using PSCustomObject
$Status = [PSCustomObject]@{
    Time = (Get-Date).Hour
    Symptoms = @("shivers", "aching")
    Condition = "aching all the time"
    Departure = "leave"
    Truth = "face the truth"
    DeathWish = "not die"
    Regret = "never been born"
    Farewell = "Goodbye, everybody, I've got to go"
    Lives = 1
}

if ($(Get-Date -Format "HH") -ge 20) {
    Write-Output "Too late, my time has come"
} else {
    Write-Output "It's not too late, there's still time"
}

for ($i = 0; $i -lt $Status.Symptoms.Count; $i++) {
    if ($Status.Symptoms[$i] -eq "shivers") {
        Write-Output "Sends $($Status.Symptoms[$i]) down my spine,"
    } else {
        Write-Output "Body's $($Status.Condition)"
    }
}

while ($Status.Lives -gt 0) {
    Write-Output $Status.Farewell
    Write-Output "Gotta $($Status.Departure) all behind and $($Status.Truth)"
    $Status.Lives--
}

Write-Output "Mama, ooh (Any way the wind blows)"
Write-Output "I don't wanna $($Status.DeathWish)"
Write-Output "I sometimes wish I'd $($Status.Regret) at all"
