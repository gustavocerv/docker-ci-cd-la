# Use a lightweight base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Run the app
CMD ["python", "app.py"]
