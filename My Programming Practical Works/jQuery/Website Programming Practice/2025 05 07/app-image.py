from langchain_core.messages import HumanMessage
from langchain_google_genai import ChatGoogleGenerativeAI
from IPython.display import Image, display
from configparser import ConfigParser
import base64

config = ConfigParser()
config.read("config.ini")

# gemini-2.0-flash-exp
# gemini-1.5-flash-latest

llm = ChatGoogleGenerativeAI(
    model="gemini-2.0-flash-exp",
    google_api_key=config["Gemini"]["API_KEY"],
    max_tokens=8192,
)


def image4LangChain(image_url):
    if "http" in image_url:
        return {"url": image_url}
    else:
        with open(image_url, "rb") as image_file:
            image_data = base64.b64encode(image_file.read()).decode("utf-8")
        return {"url": f"data:image/jpeg;base64,{image_data}"}


user_messages = []
# append user input question
user_input = "圖片中的生物是什麼，有可能練那麼壯嗎。"
user_messages.append({"type": "text", "text": user_input + "請使用繁體中文回答。"})
# append images
image_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP9hHFYPw_-HLenynEKbm1U8VKQ8CBZtcYKA&s"
image_url2 = "短行程訓練重量訓練行程影響肌肉成長-768x525.jpeg"

user_messages.append(
    {
        "type": "image_url",
        "image_url": image4LangChain(image_url),
    }
)
user_messages.append(
    {
        "type": "image_url",
        "image_url": image4LangChain(image_url2),
    }
)

human_messages = HumanMessage(content=user_messages)
result = llm.invoke([human_messages])

print("Q: " + user_input)
print("A: " + result.content)

# Display the image
display(Image(url=image_url))