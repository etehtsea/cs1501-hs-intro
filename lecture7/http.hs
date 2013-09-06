import Network.HTTP

myRequest = getRequest "http://duckduckgo.com"
body = simpleHTTP myRequest >>= getResponseBody
