# Toutes les images et vidéos sur la carte SD sont renommées et déplacées directement au bon endroit.
# Pas d'override possible, le %%-c fait que quand une image à le même nom qu'une autre, elle se trouve avec un -1 -2, etc. à la fin du nom.
Write-Host "`nCopying on local RAID" -ForegroundColor Blue
.\private\exiftool.exe '-FileName<CreateDate' -d 'R:\archives\epc-personal-heavy\media\%Y\%Y-%m-%d %Hh%Mm%S%%-c.%%le' -r 'E:\' -progress

Write-Host "`nBacking up" -ForegroundColor Blue
restic -r G:\backup\restic\epc-personal-heavy backup R:\archives\epc-personal-heavy

Write-Host "`nCopying backup on NAS" -ForegroundColor Blue
rclone copy G:\backup\restic\epc-personal-heavy carida:backup/restic/epc-personal-heavy --immutable --progress --sftp-set-modtime=false --size-only