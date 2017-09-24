FROM python:3

RUN pip install --upgrade pip

RUN mkdir -p /rf/output

WORKDIR /rf
COPY requirements.txt /rf/requirements.txt
RUN pip install -r requirements.txt

COPY entry.sh /rf/entry.sh

ENTRYPOINT ["/rf/entry.sh"]
