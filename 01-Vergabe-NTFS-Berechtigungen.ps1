# .SYNOPSIS
# Vergabe von NTFS Berechtigungen
 
# .DESCRIPTION
# Vergabe von NTFS Berechtigungen, sowie deaktivierung der Veerbung 
# beim ersten mal Anmelden ändern
 
# .PARAMETER
# $NTFS1, $NTFS2, $IRNTFS1
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de
# Git Änderung 

## Code ##
$NTFS1 = @{
    # Berechtigungen fuer die vordefinierten Benutzer festlegen
    Path         = 'v:\Projekt.txt'
    Account      = 'VORDEFINIERT\Benutzer'
    AccessRights = 'Read'
}
$IRNTFS1 = @{
    # Veerbung deaktivieren
    Path = 'v:\Projekt.txt'
}
$NTFS2 = @{
    # Berechtigungen fuer den Benutzer Tom festlegen
    Path         = 'v:\Projekt.txt'
    Account      = 'ITL\tom'
    AccessRights = 'FullControl'
}
# Konfiguration der Berechtigungen 
Remove-NTFSAccess @NTFS1
Disable-NTFSAccessInheritance  @IRNTFS1
Add-NTFSAccess @NTFS2