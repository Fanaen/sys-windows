# Crée un nouveau snapshot pour les différents dossiers sauvegardés.
Write-Host "`nPersonal archives" -ForegroundColor Blue
rclone copy G:\backup\restic\epc-personal wasabi:epc-personal --immutable --progress