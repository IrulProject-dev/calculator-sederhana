<?php
echo "<-------Calculator Sederhana-------->\n";
echo "   Silahkan Masukan Dengan Benar\n";


function getInput(String $promt){
    echo $promt; 
    return rtrim(fgets(STDIN));
}

function Calculate(float $num1, float $num2, string $operator){
    switch($operator){
        case '+':
            return $num1 + $num2;
        case '-':
            return $num1 - $num2;
        case '*':
            return $num1 * $num2;
        case '/':
            if($num2 == 0){
                echo 'Error: tidak bisa di bagi dengan  0';
            }
            return $num1 / $num2;
    }
}

$inputOperator = getInput('Operator mana yang Akan Anda gunakan(+, -, *, /):');
$inputNum1 = getInput('angka pertama:');
$inputNum2 = getInput('angka ke dua:');


$num1 = $inputNum1;
$num2 = $inputNum2;

$result = Calculate($num1, $num2, $inputOperator);

echo 'hasilnya adalah:' . $result . "\n";