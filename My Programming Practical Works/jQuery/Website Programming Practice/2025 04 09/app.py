from flask import Flask, render_template, url_for
from flask import request
from configparser import ConfigParser
import os

# Config Parser
config = ConfigParser()
config.read("config.ini")

from langchain_google_genai import ChatGoogleGenerativeAI # type: ignore

llm = ChatGoogleGenerativeAI(
    model="gemini-2.0-flash-lite", 
    google_api_key=config["Gemini"]["API_KEY"]
)

app = Flask(__name__)


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/call_llm", methods=["POST"])
def call_llm():
    if request.method == "POST":
        print("POST!")
        data = request.form
        print(data)
        user_input = "請講一句打招呼的話，並且提示番茄在右上角，不超過 20 字，只能講一句，跟之前的不一樣，有創意一點"
        role_description = """
        你是一個台灣人，請用繁體中文回答。
        """
        messages = [
            ("system", role_description),
            ("human", user_input),
        ]
        try:
            result = llm.invoke(messages)
            return result.content
        except Exception as e:
            print(f"Error: {e}")
            return "我現在不想跟你講話，待會再來"
@app.route("/call_llm2", methods=["POST"])
def call_llm2():
    if request.method == "POST":
        print("POST!")
        data = request.form
        print(data)
        user_input = "請用創意的方式說明你抵達終點了，只能講一句，跟之前的不一樣，有創意一點"
        role_description = """
        你是一個台灣人，請用繁體中文回答。
        """
        messages = [
            ("system", role_description),
            ("human", user_input),
        ]
        try:
            result = llm.invoke(messages)
            return result.content
        except Exception as e:
            print(f"Error: {e}")
            return "我現在不想跟你講話，待會再來"