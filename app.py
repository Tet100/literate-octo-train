# Use a pipeline as a high-level helper
from transformers import pipeline

pipe = pipeline("text-generation", model="VongolaChouko/Starcannon-Unleashed-12B-v1.0")# Load model directly
from transformers import AutoTokenizer, AutoModelForCausalLM

tokenizer = AutoTokenizer.from_pretrained("VongolaChouko/Starcannon-Unleashed-12B-v1.0")
model = AutoModelForCausalLM.from_pretrained("VongolaChouko/Starcannon-Unleashed-12B-v1.0")
