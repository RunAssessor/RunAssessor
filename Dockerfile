FROM python:3

WORKDIR /runassessor

COPY requirements.txt /runassessor
RUN pip install --no-cache-dir -r requirements.txt

COPY src/runassessor /runassessor/runassessor

CMD ["runassessor/runassessor.py"]
