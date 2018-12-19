<?php

//Author: NerdOfCode
//Purpose: Calculate and output prime numbers using PHP
//Note: Built using cli

function isPrime($number){
    for($factor = 2; $factor <= $number/2; $factor++){
        if($number % $factor == 0){
            return false;
        }
    }
    return true;
}

$startingNumber = 2;

while(true){
    print(isPrime($startingNumber) ? "Prime: $startingNumber\n" : "");
    $startingNumber += 1;
}

?>
