$name = "RPS2"
$spelarpoäng = 0
$datorpöang = 0

Write-Output "Välkommen att spela $name!

Skriv 1 för Sten
Skriv 2 för Papper
Skriv 3 för Sax

Lycka till!
"
while ($spelarpoäng -ne 5 -and $datorpöang -ne 5)
 {
  
    $valavdator = Get-Random -Minimum 1 -Maximum 4

    $spelarval = Read-Host "Ange tal"
    $spelarval = [int]$spelarval

    if ($spelarval -lt 1 -or $spelarval -gt 3) {
        Write-Host "Fel. Skriv 1, 2 eller 3"
        continue
    }

    $vinnare = ""
    if ($spelarval -eq $valavdator) {
        $vinnare = "Remi
        "
    }
    elseif (($spelarval -eq 1 -and $valavdator -eq 2) -or
            ($spelarval -eq 2 -and $valavdator -eq 3) -or
            ($spelarval -eq 3 -and $valavdator -eq 1)) {
        $vinnare = "Du vann
        "
        $spelarpoäng++
    }
    else {
        $vinnare = "Dator vann
        "
        $datorpöang++
    }

    
    Write-Host "Dator val: $valavdator"
    Write-Host -f Yellow "Resultat: $vinnare"


if (($spelarpoäng -eq 5 -and $datorpöang -eq 0) -or
    ($spelarpoäng -eq 4 -and $datorpöang -eq 1) -or 
    ($spelarpoäng -eq 3 -and $datorpöang -eq 2)) {
    Write-Host -f Red "Grattis, du vann! Resultat: $spelarpoäng-$datorpöang"
    break
}
elseif (($datorpöang -eq 5 -and $spelarpoäng -eq 0) -or
    ($datorpöang -eq 4 -and $spelarpoäng -eq 1) -or
    ($datorpöang -eq 3 -and $spelarpoäng -eq 2)) {
    Write-Host -f Red "Tyvärr, förlorade du. Resultat: $spelarpoäng-$datorpöang"
    break
}
}
