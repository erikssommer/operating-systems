
$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123

write-host("Skriver alle array elementene")
$myList

write-host("Langden paa arrayet")
$myList.Length

write-host("Andre element i arrayet")
$myList[1]

write-host("Litt av arrayet (1-3)")
$subList = $myList[1..3]

write-host("Skriv ut subList")
$subList

write-host("Bruker loop")
for ($i = 0; $i -le ($myList.length - 1); $i += 1) {
   $myList[$i]
}

write-host("Bruker forEach loop")
foreach ($element in $myList) {
   $element
}

write-host("using while loop")
$i = 0
while ($i -lt 4) {
   $myList[$i];
   $i++
}

write-host("Angi verdier")
$myList[1] = 10
$myList
