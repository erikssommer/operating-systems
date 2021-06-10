$days = @()

for ($day = 0; $day -lt 7; $day++) {
    $days += 0
}

foreach ($fil in ls -r C:\Users 2> $null)
{
    $day = [int]$fil.CreationTime.DayOfWeek
    $days[$day]++
}

for ($day = 0; $day -lt 7; $day++) {
    $antall = $days[$day];
    echo "Dag ${day}: $antall"
}