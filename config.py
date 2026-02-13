import os
from dotenv import load_dotenv

# Load environment variables from .env file if present
load_dotenv()

# API Keys
# SECURITY WARNING: For production, set these as environment variables
GEMINI_API_KEY = os.getenv("GEMINI_API_KEY", "AIzaSyDywXKmDbFyXPyMqVAuYCdsbFufydljZ0E")
TAVILY_API_KEY = os.getenv("TAVILY_API_KEY", "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")

# Configuration
MODEL_NAME = os.getenv("MODEL_NAME", "gemini-2.5-flash")
TEMPERATURE = float(os.getenv("TEMPERATURE", "0.8"))
MAX_OUTPUT_TOKENS = int(os.getenv("MAX_OUTPUT_TOKENS", "2000"))
