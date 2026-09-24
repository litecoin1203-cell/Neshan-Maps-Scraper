FROM mcr.microsoft.com/playwright/python:v1.48.0-jammy

WORKDIR /app

# اول requirements را کپی و نصب کن
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# مرورگر را مجبور به نصب مجدد کن
RUN playwright install chromium

COPY . .

CMD ["python", "neshan_scraper.py", "-s", "کافه تهران", "-t", "5", "-f", "json", "--headless", "--delay", "medium"]
