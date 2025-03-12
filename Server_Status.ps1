Write-Host "Server Status Tool by Jacen Hyde"

# IP?
$IP = Read-Host "Enter Host IP"
# OS?
$OS = Read-Host "What is the OS of the target? (Windows/Linux)"
if ($OS -eq "Linux") {
    # Creds
    $Username = Read-Host "Enter SSH Username"
    $Password = Read-Host "Enter SSH Password"
    # Commands
    $Command = @"
    echo 'Uptime:'; uptime -p;
    echo 'OS Version:'; cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d '=' -f2 | tr -d '"';
"@
    # SSH :D
    try {
        $Session = New-SSHSession -ComputerName $IP -Credential (New-Object PSCredential $Username, (ConvertTo-SecureString $Password -AsPlainText -Force)) -AcceptKey
        $Result = Invoke-SSHCommand -SessionId $Session.SessionId -Command $Command
        if ($Result.Output.Count -gt 0) {
            $FormattedOutput = $Result.Output -join "`n"
            Write-Host "`n$FormattedOutput"
        } else {
            Write-Host "Unable to connect to server."
        }
        do {
            Write-Host "`nWhat would you like to do next?"
            Write-Host "[1] Run System Update"
            Write-Host "[2] Reboot System"
            Write-Host "[3] Create an SSH Shell"
            Write-Host "[4] End Script"
            $Choice = Read-Host "Select an option"
            switch ($Choice) {
                "1" {
                    Write-Host "Running system update..."
                    $UpdateResult = Invoke-SSHCommand -SessionId $Session.SessionId -Command "sudo apt update && sudo apt upgrade -y"
                    Write-Host "`n$($UpdateResult.Output -join "`n")"
                }
                "2" {
                    Write-Host "Rebooting system..."
                    Invoke-SSHCommand -SessionId $Session.SessionId -Command "sudo reboot"
                    Remove-SSHSession -SessionId $Session.SessionId
                    exit
                }
                "3" {
                    Write-Host "Opening interactive SSH shell..."
                    Remove-SSHSession -SessionId $Session.SessionId
                    ssh $Username@$IP
                    exit
                }
                "4" {
                    Write-Host "Ending script..."
                    Remove-SSHSession -SessionId $Session.SessionId
                    exit
                }
                default {
                    Write-Host "Please choose a valid number."
                }
            }
        } while ($Choice -eq "1") # Loop if update is chosen in case more needs to be done

    } catch {
        Write-Host "Couldn't connect to server"
    }
}
