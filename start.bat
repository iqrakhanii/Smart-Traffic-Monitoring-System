@echo off
echo Starting Smart Traffic System...

:: Start Django Backend
start "Django Backend" cmd /k "cd /d D:\Documents\SmartTrafficSystem\traffic_backend && D:\Documents\SmartTrafficSystem\venv\Scripts\activate && python manage.py runserver"

:: Wait 3 seconds for backend to start
timeout /t 3 /nobreak

:: Start React Frontend
start "React Frontend" cmd /k "cd /d D:\Documents\SmartTrafficSystem\frontend\traffic-dashboard && npm run dev"

:: Wait 5 seconds for frontend to start
timeout /t 5 /nobreak

:: Open browser at login page
start msedge http://127.0.0.1:8000/auth/login/

echo All systems started!