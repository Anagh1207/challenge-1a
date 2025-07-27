# Use a minimal Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all contents of app folder into container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the main script by default
CMD ["python", "main.py"]
