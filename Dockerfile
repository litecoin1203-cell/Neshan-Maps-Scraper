FROM mcr.microsoft.com/playwright/python:v1.48.0-jammy

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "neshan_scraper.py", "-s", "کافه تهران", "-t", "20", "-f", "json", "--headless", "--delay", "medium"]
