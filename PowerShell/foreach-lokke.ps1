foreach ($ls in ls *.ps1){
    $sum += $ls.length
}

$sum

ls | ForEach-Object {$sum += $_.Length}