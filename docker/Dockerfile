FROM python:3

RUN pip install --upgrade pip

RUN mkdir /rf
COPY entry.sh /rf/entry.sh
COPY requirements.txt /rf/requirements.txt
RUN pip install -r /rf/requirements.txt

RUN adduser --system --group --uid 1000 robot
RUN chown -R robot:robot /rf

USER robot
RUN mkdir -p /rf/tests
RUN mkdir -p /rf/output

WORKDIR /rf

ENTRYPOINT ["/rf/entry.sh"]
