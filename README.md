## Descrizione

Componente Audit per il progetto Notify (Piattaforma di notifica regionale). Ha il compito di salvare sul db i record di audit che sono le attività eseguite degli utenti sulla piattaforma (lettura mesaggi, impostazione delle preferenze di notifica, ecc...).

## Configurazione

Per una corretta configurazione della componente vedere il file **README.md** presente nella cartella *docs*.

## Installazione

* Clonare il repository in una cartella. (Il modulo dipende dalla componente [notify-commons](https://github.com/csipiemonte/notify-commons), pertanto nella cartella deve essere presente tale componente)
* Posizionarsi nella cartella del repository: `cd notify-audit`
* Eseguire il comando `npm install` per installare le dipendenze
* Eseguire lo script `./audit` per avviare la componente
