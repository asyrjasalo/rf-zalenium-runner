FROM python:3

RUN pip install --upgrade pip

RUN mkdir /rf
COPY docker/entry.sh /rf/entry.sh
COPY docker/requirements.txt /rf/requirements.txt
RUN pip install -r /rf/requirements.txt

RUN adduser --system --group --uid 1000 robot

WORKDIR /rf
RUN mkdir /rf/output

COPY tests /rf/tests
RUN chown -R robot:robot /rf

USER robot

ENTRYPOINT ["/rf/entry.sh"]
