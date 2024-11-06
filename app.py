from llama_cpp import Llama

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
print(chat.messages.content[0])