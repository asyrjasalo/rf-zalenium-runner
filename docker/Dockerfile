ARG ROBOTFRAMEWORK_VERSION
FROM robotframework/rfdocker:$ROBOTFRAMEWORK_VERSION

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
