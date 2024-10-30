FROM python:3.8 as base
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM python:3.8-slim as prod
WORKDIR /app
COPY --from=base /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY --from=base /usr/local/bin /usr/local/bin
COPY . .