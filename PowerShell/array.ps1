# Et array kan defineres av en kommaseparert liste:
$a = 1,2,3,4
a[0]
a[1]

# Bruke split
$b = "1 2 3"
$sum = 0

foreach($tall in $b.Split(" ")){
    $sum += $tall
}

# Definere forst og så legge til
$liste = @()
$liste += "null"
$liste += "en"
$tall

# Først etter at elementet er definert kan man tilordne verdier uten å bruke += operatoren:
$liste[0] = "zero"
$tall

# Man kan også starte med å definere et array med elementer på følgende måte:
$char = @("a","b","c")
$char[2]