FROM python:3.12-slim

RUN apt-get update && \
    apt-get install -y socat && \
    pip install wikipedia-mcp

EXPOSE 8080

CMD sh -c "socat TCP-LISTEN:8080,fork TCP:127.0.0.1:8080 & wikipedia-mcp --transport sse --language fr"
