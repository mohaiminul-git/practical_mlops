FROM python:3.12-slim

# Install make and any other tools
RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files
COPY hello.py .
COPY test_hello.py .
COPY Makefile .

# Default command
CMD ["make", "test"]
