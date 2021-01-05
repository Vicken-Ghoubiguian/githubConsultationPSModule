﻿# Importation of the 'User' module...
Using module ..\..\User.psm1

# Definition of all parameters : '$userLogin' for the wished user's name...
param (
    [string]$userLogin,
    [bool]$withRepos,
    [bool]$withBranches,
    [bool]$withLanguages
)

# Creation of an instance of the User Powershell class with all wished parameters...
$currentUser = New-Object -TypeName User -ArgumentList $userLogin, $withRepos, $withBranches, $withLanguages

# Display all collected informations about the wished user in the Powershell console...
$currentUser.ToString()