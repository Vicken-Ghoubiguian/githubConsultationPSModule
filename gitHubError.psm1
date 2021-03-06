﻿# Definition of the GitHubError Powershell class to manage possible occured HTTP/HTTPS errors
class GitHubError
{
    # All attributes of the GitHubError class...
    hidden [string]$type
    hidden [string]$message
    hidden [string]$stackTrace

    # GitHubError class constructor with all needed parameters
    GitHubError($type, $message, $stackTrace)
    {
        $this.type = $type
        $this.message = $message
        $this.stackTrace = $stackTrace
    }

    # Returns the GitHubError current instance as String...
    [String] ToString()
    {

        $returningString = "`n"
        $returningString += "GitHub Error" + "`n"
        $returningString += "======================================" + "`n"
        $returningString += "|Error type: " + $this.type + "`n"
        $returningString += "|Error message: " + $this.message + "`n"
        $returningString += "|Error stackTrace: " + $this.stackTrace + "`n"
        $returningString += "======================================" + "`n"

        return $returningString
    }

    # Returning the module's type as string...
    [string] getModuleType()
    {
        return "GitHubError"
    }

    # 'type' attribute getter
    [string] getType()
    {
        return $this.type
    }

    # 'message' attribute getter
    [string] getMessage()
    {
        return $this.message
    }

    # 'stackTrace' attribute getter
    [string] getStackTrace()
    {
        return $this.stackTrace
    }
}
