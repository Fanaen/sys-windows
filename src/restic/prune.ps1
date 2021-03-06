# On récupère le mot de passe pour le garder pour toutes les commandes
$securePassword = Read-Host "enter password for repository" -AsSecureString
$env:RESTIC_PASSWORD  =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePassword))

# Crée un nouveau snapshot pour les différents dossiers sauvegardés.
Write-Host "`nPersonal archives" -ForegroundColor Blue
restic -r G:\backup\restic\epc-personal prune
Write-Host "`nHeavy personal archives" -ForegroundColor Blue
restic -r G:\backup\restic\epc-personal-heavy prune
Write-Host "`nInter-personal archives" -ForegroundColor Blue
restic -r G:\backup\restic\epc-shared prune