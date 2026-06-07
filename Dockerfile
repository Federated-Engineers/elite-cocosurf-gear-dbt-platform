FROM python:3.12-slim

WORKDIR /usr/dbt_src

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY cocosurf-gear/ ./cocosurf-gear/

WORKDIR /usr/dbt_src/cocosurf-gear

CMD ["dbt", "build"]