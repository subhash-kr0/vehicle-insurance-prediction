# FROM python:3.12-slim-bookworm

# WORKDIR /app

# COPY . /app

# # Install uv
# RUN pip install uv

# # Install dependencies using uv
# RUN uv pip install --system .

# EXPOSE 5000

# CMD ["uv", "run", "python", "app.py"]
# # CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]



FROM python:3.12-slim-bookworm

WORKDIR /app

# Copy only dependency files first (better cache)
COPY pyproject.toml ./

# Install uv
RUN pip install uv

# Install dependencies
RUN uv pip install --system .

# Copy application code
COPY . .

EXPOSE 8080

CMD ["uv", "run", "python", "app.py"]
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
