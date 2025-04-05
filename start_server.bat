@echo off
:: Переход в папку проекта
cd /d C:\ПУТЬ\К\ТВОЕМУ\ПРОЕКТУ

:: (опционально) активация виртуального окружения
:: call venv\Scripts\activate

:: Запуск сервера с логированием в файл
echo [Запуск %DATE% %TIME%] >> server_log.txt
python app.py >> server_log.txt 2>&1
