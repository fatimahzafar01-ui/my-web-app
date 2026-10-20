# Step 1: Python ka official lightweight image use karein
FROM python:3.9-slim

# Step 2: App ke liye folder set karein
WORKDIR /app

# Step 3: Requirements file copy karein aur packages install karein
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Baki poora code copy karein
COPY . .

# Step 5: Port 8080 expose karein
EXPOSE 8080

# Step 6: App run karne ki command
CMD ["python", "app.py"]