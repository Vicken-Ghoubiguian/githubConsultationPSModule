﻿Using module .\usefulClassesAndObjects\gitHubError.psm1

# Definition of the Commit Powershell class to define a repository's commit from the GitHub API...
class Commit
{
    # All attributes of the Commit class...
    hidden [string]$sha
    hidden [string]$nodeId
    hidden [string]$message

    hidden [string]$loginAuthor
    hidden [string]$idAuthor
    hidden [string]$nodeIdAuthor
    hidden [string]$avatarAuthor
    hidden [string]$profileAuthor
    hidden [string]$typeAuthor

    hidden [string]$loginCommitter
    hidden [string]$idCommitter
    hidden [string]$nodeIdCommitter
    hidden [string]$avatarCommitter
    hidden [string]$profileCommitter
    hidden [string]$typeCommitter

    hidden [int]$total
    hidden [int]$additions
    hidden [int]$deletions
    hidden [System.Array]$files

    # Commit class constructor with user login, repository name and sha...
    Commit([string]$wishedUserLogin, [string]$wishedRepositoryName, [string]$wishedSha)
    {
        # Extract all the data relating to the desired commit identified by the desired user login, the desired repository name and desired sha from the received JSON ...
        $githubGetCommitURL = "https://api.github.com/repos/" + $wishedUserLogin + "/" + $wishedRepositoryName + "/commits/" + $wishedSha
    }

    # Commit class constructor with all class attributes in parameter...
    Commit()
    {

    }

    # Definition of a static function to put all commits from a user and a repository identified respectively by its login and its name inside an array...
    static [System.Array] listAllCommits([string]$wishedUserLogin, [string]$wishedRepositoryName)
    {
        # Create an HTTP request to take all commits of the GitHub repository identified by its name and its owner's login...
        $githubGetCommitsReposURL = "https://api.github.com/repos/" + $wishedUserLogin + "/" + $wishedRepositoryName + "/commits"

        #
        return @()
    }

    # 'sha' attribute getter...
    [string] getSha()
    {
        return $this.sha
    }

    # 'nodeId' attribute getter...
    [string] getNodeId()
    {
        return $this.nodeId
    }

    # 'message' attribute getter...
    [string] getMessage()
    {
        return $this.message
    }

    # 'loginAuthor' attribute getter...
    [string] getLoginAuthor()
    {
        return $this.loginAuthor
    }

    # 'idAuthor' attribute getter...
    [string] getIdAuthor()
    {
        return $this.idAuthor
    }

    # 'nodeIdAuthor' attribute getter...
    [string] getNodeIdAuthor()
    {
        return $this.nodeIdAuthor
    }

    # 'avatarAuthor' attribute getter...
    [string] getAvatarAuthor()
    {
        return $this.avatarAuthor
    }

    # 'profileAuthor' attribute getter...
    [string] getProfileAuthor()
    {
        return $this.profileAuthor
    }

    # 'typeAuthor' attribute getter...
    [string] getTypeAuthor()
    {
        return $this.typeAuthor
    }



    # 'total' attribute getter...
    [int] getTotal()
    {
        return $this.total
    }

    # 'additions' attribute getter...
    [int] getAdditions()
    {
        return $this.additions
    }

    # 'deletions' attribute getter...
    [int] getDeletions()
    {
        return $this.deletions
    }

    # 'files' attribute getter...
    [System.Array] getFiles()
    {
        return $this.files
    }
}