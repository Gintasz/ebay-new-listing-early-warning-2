FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY scraper.py .

CMD ["python", "-u", "scraper.py", "-nogui", "-path", "data/config.json"]