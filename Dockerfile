#Grab the latest alpine image
FROM alpine:latest

# Install python and pip
RUN apk add --no-cache --update python3 py3-pip bash
COPY requirements.txt /src/requirements.txt

# Install dependencies
RUN pip3 install --no-cache-dir -q -r /src/requirements.txt

# Add our code
COPY app.py /src
COPY buzz /src/buzz

# Run the app
CMD python3 /src/app.py
