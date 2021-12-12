# Crée un nouveau snapshot pour les différents dossiers sauvegardés.
# --sftp-set-modtime=false --size-only permet de passer sur un SFTP en mode immutable.
Write-Host "`nEverything" -ForegroundColor Blue
rclone copy R:\backup\restic carida:backup/restic --immutable --progress --sftp-set-modtime=false --size-only