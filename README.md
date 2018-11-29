# 1819_5ahif_nvs_assignment05_docker
Dockerfile, docker.compose.yml for JakartaEE, mariadb, reverse proxy, ...

# Übung

- Dockerfile
- docker-compose

Termin: 30.November 2018

## Erstellen Dockerfile

Verwenden Sie Ihr microprofile-Projekt (eigene DB-Tabellen)

Schreiben Sie ein Dockerfile, um ausgehend von einer vanilla Ubuntu-Installation, installieren Sie Java 10.0 (bei Problemen 8). Anschließend ist noch das 

Als Ergebnis soll auch ein kleines Cheat-Sheet erstellt, werden in dem zB Unterschied zwischen ADD und COPY erklärt. Warum COMMAND/EXECUTE wichtig ist.

<https://github.com/caberger/jee-docker>

## Container-Orchestrierung mit docker-compose

Erstellen Sie ein docker-compose.yml File
Diskutieren Sie Probleme, wie das Warten auf die Datenbank


## Upload in dockerhub

Laden Sie Ihr Arbeitsergbnis in Dockerhub hoch und geben SIe die Koordinaten im README an

## Kommentar Thomas Kaar

Ich habe so gut es ging versucht, die Scripts von dem GitRepo oben zu verstehen. Jedoch ist mir immer noch unerklärlich wie man dort das war-File deployed.
Ich habe grundsätzlich versucht das Vehicle-Bsp (weil es bei meinem eigenen Probleme gegeben hat) auf die MySQL-Datenbank zu adaptieren und auch die dockerfiles soweit zumzuschreiben, dass man diese problemlos starte kann. Leider bin ich nicht fertig geworden. Dennoch habe ich ein Dockerfile zu dem ubuntu mit Java 10 geschrieben.

## CheatSheet

### Unterschied COPY/ADD

Bei COPY kopiert man einfach die Files bzw. Directories in dem localen Directory.
Bei ADD kann man einfach eine URL angeben und muss nicht auf ein File in dem Docker-Directory verweisen. Außerdem kann man tar-files direkt in einen Docker-Container extrahieren.

### Wichtig COMMAND/EXECUTE

ENTRYPOINT gibt an welchen Befehl man ausführen soll.
CMD gibt die Parameter dafür mit.
Beider werden zum Start des Containers ausgeführt.

BSP:
ENTRYPOINT ["/bin/ping"]
CMD ["localhost"]

ODER

CMD ["/bin/ping", "localhost"]

## docker-compose

Um das Problem mit dem ungleichen Starten der Container zu lösen, gibt es in diesem Repo bereits eine Schleife vor dem Wildfly, die checkt, ob die Datenbank schon läuft.