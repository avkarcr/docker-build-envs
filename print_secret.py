import os
import time
secret = os.getenv('MY_SECRET')
while True:
  print(secret)
  time.sleep(5)
