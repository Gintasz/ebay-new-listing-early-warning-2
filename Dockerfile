FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements (list your dependencies)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the script
COPY main.py .

# Run script in infinite loop every 15 min
CMD ["python", "main.py -nogui"]
