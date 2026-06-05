import gradio as gr
from agents.summarizer import Summarizer

def run(file):
    s = Summarizer()
    return s.summarize(file.name)

demo = gr.Interface(fn=run, inputs=gr.File(), outputs='text')
demo.launch()
