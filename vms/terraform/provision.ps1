Start-Transcript -Path C:\provision.log

net user vagrant /delete

Set-MpPreference -DisableRealtimeMonitoring $true

New-ItemProperty -Path HKCU:\Software\Microsoft\ServerManager -Name DoNotOpenServerManagerAtLogon -PropertyType DWORD -Value "1" -Force

function Get-HostToIP($hostname) {
  $result = [system.Net.Dns]::GetHostByName($hostname)
  $result.AddressList | ForEach-Object {$_.IPAddressToString }
}

Write-Output "provision.ps1"
Write-Output "HostName = $($HostName)"

$PublicIPAddress = Get-HostToIP($HostName)

Write-Output "PublicIPAddress = $($PublicIPAddress)"
Write-Output "USERPROFILE = $($env:USERPROFILE)"
Write-Output "pwd = $($pwd)"

Write-Output Install bginfo
[Environment]::SetEnvironmentVariable('FQDN', $HostName, [EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable('PUBIP', $PublicIPAddress, [EnvironmentVariableTarget]::Machine)

refreshenv
$env:PATH=$env:PATH + ';C:\Program Files\Mozilla Firefox;C:\Program Files\Microsoft VS Code;C:\Program Files\Git\bin'
[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine)


# Create shortcuts
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\PowerShell.lnk")
$Shortcut.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$shortcut.WorkingDirectory = "$Home"
$Shortcut.Save()

# Run some containers
docker run --rm mcr.microsoft.com/windows/servercore:ltsc2019 cmd
docker run --rm mcr.microsoft.com/windows/nanoserver:1809 cmd

#change rdp port
#Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-TCP\" -Name PortNumber -Value 443

Write-Output Cleaning up
Remove-Item C:\provision.ps1

Restart-Computer