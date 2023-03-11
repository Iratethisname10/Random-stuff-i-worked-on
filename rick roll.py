import webbrowser
import time
import random

while True:
    sites = random.choice(['https://www.youtube.com/watch?v=vLRyJ0dawjM', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'https://www.youtube.com/watch?v=FpFztrJbksg'])
    webbrowser.open(sites)
    seconds = random.randrang(0,2)
    time.sleep(seconds)