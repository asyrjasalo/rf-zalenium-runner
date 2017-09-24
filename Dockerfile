FROM python:3

RUN useradd --create-home --shell /bin/bash robot

WORKDIR /home/robot

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY tests tests
RUN chown -R robot tests

USER robot

ENTRYPOINT ["robot", "--outputdir", "results"]
