FROM python:3.9
WORKDIR /app
COPY  app.py/app
RUN pip install --no-cache-dir flask 
EXPOSE 1002
CMD ["sh", "-c", "python app.py --port=1002 & tail -f /dev/null"]
