#! /bin/bash -x
read -p "Enter 1st num: " a
read -p "Enter 2nd num: " b
read -p "Enter 3rd num: " c
p=$(echo $a $b $c | awk '{print $1+$2*$3}')
echo "First Number: $p"
q=$(echo $a $b $c | awk '{print $3+$1/$2}')
echo "Second Number: $q"
