from llama_cpp import Llama
from fastapi import FastAPI
import uvicorn
app = FastAPI()

@app.get("/")
def greet_json():
        return {"Great": "Hello World!"}

def test():
    llm = Llama.from_pretrained(
    	repo_id="tannedbum/L3-Nymeria-v2-8B-iGGUF",
    	filename="L3-Nymeria-v2-8B-Q3_K_M.gguf",
    )

    chat = llm.create_chat_completion(
    	messages = [
    		{
    			"role": "user",
    			"content": "What is the capital of France?"
    		}
    	]
    )
    print("GOIDA")
    print(chat["choices"][0].messages)
if __name__ == "__main__":
    print("Start")
    uvicorn.run("main:app", host="0.0.0.0", port=7860)
    try:
       print(uvicorn.port)
    except:
        print("no")
    
 