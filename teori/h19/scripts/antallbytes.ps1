foreach ($ls in ls -r C:\ 2> $null){
    if ($ls.Extension -eq ".ps1"){
        $sum += $ls.length
    }
}

echo "Antall bytes av filer med extension .ps1 under C: $sum"