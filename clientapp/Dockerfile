FROM alpine:3

EXPOSE 5001

RUN apk update && apk upgrade -q
RUN apk add py3-flask py3-requests

# Make sure our app dir exists
RUN mkdir /opt/app


WORKDIR /opt/app

COPY app.py .

ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=5001"]
