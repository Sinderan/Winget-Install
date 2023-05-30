Start-Process -Wait -NoNewWindow -File "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -ArgumentList "/configure -lockSettings=enable"
Start-Process -Wait -NoNewWindow -File "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -ArgumentList "/configure -scheduleAuto"
Start-Process -Wait -NoNewWindow -File "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -ArgumentList "/configure -scheduleAction=DownloadInstallAndNotify"
New-ItemProperty -Path Registry::"HKLM\SOFTWARE\Dell\UpdateService\Clients\CommandUpdate\Preferences\CFG" -Name "ShowSetupPopup" -PropertyType "DWORD" -Value "0" -Force