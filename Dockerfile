FROM python:3.12-alpine

# Set the working directory
WORKDIR /app

# Copy all files
COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose app port 
EXPOSE 8000

CMD ["fastapi", "run", "main.py"]
