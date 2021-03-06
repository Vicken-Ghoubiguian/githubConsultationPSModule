﻿Using module ..\..\usefulFunctions.psm1

# Call of the famous function 'Get_All_GitHub_Emojis'...
$allEmojis = Get_All_GitHub_Emojis

# Here a line break...
Write-Host "`n"

# Browse the associative array containing all the emojis and displaing them...
foreach($emoji in $allEmojis.GetEnumerator()) {

    Write-Host "$($emoji.Name): $($emoji.Value)", "`n"
}