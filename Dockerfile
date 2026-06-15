# 1. Use an official lightweight Python image
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the dependency list and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of our application code
COPY app.py .

# 5. Tell Docker which port the container listens on
EXPOSE 5000

# 6. The command to run when the container starts
CMD ["python", "app.py"]
