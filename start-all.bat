@echo off
echo =====================================
echo      Starting DxRoll Services
echo =====================================

REM --- Start Python FastAPI ---
echo Starting Python Data Engine...
start cmd /k "cd data-python && .\venv\Scripts\activate && python -m uvicorn main:app --host 0.0.0.0 --port 8000"

REM --- Start Spring Boot ---
echo Starting Spring Boot Backend...
start cmd /k "cd backend-java && .\mvnw spring-boot:run"

REM --- Start Next.js Frontend ---
echo Starting Next.js Frontend...
start cmd /k "cd frontend && npm run dev"

echo =====================================
echo DxRoll: All servers are starting...
echo =====================================
pause
