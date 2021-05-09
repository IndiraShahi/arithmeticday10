#! /bin/bash -x
read -p "Enter 1st num: " a
read -p "Enter 2nd num: " b
read -p "Enter 3rd num: " c
p=$(echo $a $b $c | awk '{print $1+$2*$3}')
echo "First Number: $p"
q=$(echo $a $b $c | awk '{print $3+$1/$2}')
echo "Second Number: $q"
r=$(echo $a $b $c | awk '{print $1%$2+$3}')
echo "Third Number: $r"
s=$(echo $a $b $c | awk '{print $1*$b+$c}')
echo "Fourth Number: $s"
declare -A output
output[p]="$p"
output[q]="$q"
output[r]="$r"
output[s]="$s"
echo "Results in Dict: " ${!output[@]}:${output[@]}
arr=($p $q $q $r)
echo "Results in Array: " ${arr[@]}
