﻿# Importation of the 'usefulFunctions' module...
Using module ..\..\usefulFunctions.psm1

# Definition of the all required parameter: '$ownerLogin' for the wished owner's login and '$reposName' for the repository's name...
param (
    [string]$ownerLogin,
    [string]$reposName
)

#
$allCommitsCount = Count_All_Commits_For_Specific_Repository_In_The_Last_52_Weeks -ownerLogin $ownerLogin -reposName $reposName

#
Write-Host $allCommitsCount