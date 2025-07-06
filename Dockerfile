# Use a lightweight Python image
FROM redhat/ubi8

# Set working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

# Expose Flask app port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
