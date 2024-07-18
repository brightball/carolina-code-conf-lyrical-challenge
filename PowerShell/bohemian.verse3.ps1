# Verse 3 Line 1
$IC = [PSCustomObject]@{
    silhouetto = "man"
    size = "little"
}
$IC | Where-Object -FilterScript {$_.size -like 'little' } | Get-Member -MemberType Properties | ForEach-Object { if ($IC."$($_.Name)" -eq $IC.silhouetto ) {write-host "$($_.Name) of a $($IC.size) $($IC.silhouetto)"} }

# Verse 3 Line 2
#Scaramouche, Scaramouche, will you do the Fandango?
$WillYouDoThe = "Scaramouche"
Write-Host "$WillYouDoThe, $WillYouDoThe, $([regex]::Replace($($(Get-Variable -Name WillYouDoThe).Name), '(?<!^)([A-Z])', ' $1').ToLower()) $($WillYouDoThe -replace "S", "F" -replace "cara", "and" -replace "mouche", "ango")?"

# Verse 3 Lines 9 through 15
$letMeGo = $false
$letGo = 0
$CanIGo = "Bismillah! No, we will not let you go"
do {
    if ($letGo -eq 0) {
        Write-Host "$CanIGo"
    } elseif ($letGo -gt 0 -and $letGo -lt 3) {
        Write-Host "(Let him go) $CanIGo"
    } elseif ($letGo -ge 3 -and $letGo -lt 5) {
        $CanIGo = ($CanIGo -replace "No, we will", "Will" -replace "him", "me").Substring(9)
        Write-Host "(Let me go) $CanIGo"
    } elseif ($letGo -eq 5) {
        Write-Host "(Never, never, never, never let me go) Ah"
    } else {
        Write-Host "No, no, no, no, no, no, no"
        $letMeGo = $true
    }
    $letGo++
} until ($letMeGo)


