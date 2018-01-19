# https://github.com/asyrjasalo/rfdocker
# https://hub.docker.com/r/robotframework/rfdocker

FROM robotframework/rfdocker:3.0.2

### Uncomment following two lines if having external test libraries:
#COPY requirements.txt .
RUN pip install robotframework-seleniumlibrary==3.0.1
#RUN pip install --no-cache-dir -r requirements.txt
