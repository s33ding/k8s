FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy your Python script or application into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Command to run your application
CMD ["python", "main.py"]
