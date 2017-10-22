<?php
#Author: NerdOfCode
#Purpose: Calculate prime numbers using PHP


$start=2;
$find=2;

while(true){
        if($start % $find == 0){
                $start+=1;
        }else if($start % $find != 0 && $start>$find){
                echo "$start is prime";
                $start+=1;
        }else{
                $find+=1;
        }
}

?>
