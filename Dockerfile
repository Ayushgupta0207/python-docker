# stage 1 base image 994mb ~ 1.01GB
FROM python:3.7 AS builder

WORKDIR /app

COPY requirement.txt .

RUN pip install -r requirement.txt

# -----------------------

# stage 2 base image

FROM python:3.7-slim

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.7/site-packages /usr/local/lib/python3.7/site-packages 

COPY  . .

ENTRYPOINT [ "python" , "run.py"]



