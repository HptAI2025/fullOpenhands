FROM python:3.12-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    make \
    build-essential \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install poetry

# Copy project files
COPY . .

# Configure poetry and install dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Build frontend
RUN cd frontend && npm install && npm run build

# Create necessary directories
RUN mkdir -p /app/workspace /app/.openhands

# Set environment variables
ENV PYTHONPATH=/app
ENV DEBUG=1
ENV RUNTIME=local
ENV OPENHANDS_WORKSPACE_BASE=/app/workspace
ENV OPENHANDS_CONFIG_DIR=/app/.openhands

# Expose port
EXPOSE 12000

# Start command (without SESSION_API_KEY to disable auth)
CMD ["poetry", "run", "uvicorn", "openhands.server.listen:app", "--host", "0.0.0.0", "--port", "12000"]