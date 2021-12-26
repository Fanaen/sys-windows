# Flags robocopy pour faire de l'append-only pour Restic.
# - /E Copie les sous-répertoires, y compris les vides.
# - /B Copie les fichiers en mode de sauvegarde. Le mode de sauvegarde permet à Robocopy 
#      de remplacer les paramètres d’autorisation de fichier et de dossier (ACL). Cela 
#      vous permet de copier des fichiers auxquels vous n’avez peut-être pas accès, en
#      supposant qu’elle est exécutée sous un compte disposant de privilèges suffisants.
# - /XC /XN /XO pour désactiver le remplacement
# 
# - /L pour le dry-run
# 
# Source : https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/robocopy
# Source : https://stackoverflow.com/questions/4228807/copy-files-without-overwrite/4228925

robocopy G:\backup\restic R:\backup\restic /E /XC /XN /XO