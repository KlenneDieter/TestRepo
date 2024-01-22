
# syntax=docker/dockerfile:1
# Gebruik het Ubuntu Jammy-beeld als basis
FROM ubuntu:jammy

# Update de pakketlijsten en installeer Python 3
RUN apt-get update 
RUN apt-get install -y python3

# Maak een werkdirectory aan en stel het als werkdirectory in
WORKDIR /pythontest

# Kopieer de inhoud van de huidige map naar de werkdirectory in de container
COPY . .

EXPOSE 8000

# Voer het commando uit bij het starten van de container
CMD ["python3", "-u", "app.py"]
