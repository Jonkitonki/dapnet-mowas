# dapnet-mowas

Über die Seite des BBK-Bund ist eine JSON-Datei mit Gefahrenmeldungen abrufbar. 
https://warnung.bund.de/bbk.mowas/gefahrendurchsagen.json

Mit JQ wird nach Landkreis gefiltert. Die Headline der Meldung wird in einer Variable gespeichert, 
die über die API des Dapnet an Pager und Funkgeräte als Nachricht verschickt wird.
https://hampager.de/dokuwiki/doku.php#dapnet_api

Das Skript soll über die Linux-Shell ausführbar sein.
