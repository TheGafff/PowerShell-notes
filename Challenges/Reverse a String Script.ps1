#Start with a string
$text="Simonduck"
$text

#Reverse the string statically using index position
$reverse = $text[10..0] -join ''
$reverse

#Use the length of the string as the dynamic value
$length = $text.Length
$reverse = $text[$length..0] -join ''
$reverse