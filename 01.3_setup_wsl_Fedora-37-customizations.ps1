# Use default user to  be used
Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\*\ DistributionName | Where-Object -Property DistributionName -eq Fedora-37  | Set-ItemProperty -Name DefaultUid -Value 1000

printf "\n[user]\ndefault = pr\n" | sudo tee -a /etc/wsl.conf
wsl -t Fedora-37
