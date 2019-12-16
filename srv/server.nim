import jester

settings:
  port = Port(5001)

routes:
  get "/":
    sendFile("public/index.html")