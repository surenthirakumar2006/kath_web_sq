FROM alpine:latest
RUN apk add --no-cache python3 py3-flask
WORKDIR /app
COPY app.py templates/ static/ /app
EXPOSE 1002
CMD ["sh", "-c", "python app.py --port=1002 & tail -f /dev/null"]
