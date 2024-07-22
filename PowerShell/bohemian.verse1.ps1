$Status = [PSCustomObject]@{
    Person = "man"
    Condition = "dead"
    Action = "pulled"
    LifeStage = "begun"
    Matters = "nothing"
}

if ($Status.Condition -eq "dead") {
    Write-Output "Mama, just killed a $($Status.Person)"
    Write-Output "Put a gun against his head, $($Status.Action) my trigger, now he's $($Status.Condition)"
}

Write-Output "Mama, life had just $($Status.LifeStage)"
$Status.LifeStage = "thrown it all away"
Write-Output "But now I've gone and $($Status.LifeStage)"

Write-Output "Mama, ooh, didn't mean to make you cry"
$tomorrow = Get-Date
if ($tomorrow.AddDays(1) -ne $null) {
    Write-Output "If I'm not back again this time tomorrow"
    Write-Output "Carry on, carry on as if $($Status.Matters) really matters"
}
