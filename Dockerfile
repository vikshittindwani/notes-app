# Step 1: Base image
FROM python:3.10-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy requirements.txt and install dependencies
COPY backend/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the rest of the code
COPY backend/ .

# Step 5: Expose port (Flask default: 5000)
EXPOSE 5000

# Step 6: Run the application
CMD ["python", "app.py"]
