$start = date $args[0]
$stop = date $args[1]

$diff = $stop - $start

$h = '{0:d2}' -f $diff.Hours
$m = '{0:d2}' -f $diff.Minutes
$s = '{0:d2}' -f $diff.Seconds

echo "${h}:${m}:${m}"