# collatz
This function checks for the Collatz conjecture for a given number. It can be customized to check other variants different to 3n+1. Takes a number n. If it’s even, divide by 2. If it’s odd, multiply by 3 and add 1. Repeat. Do all starting numbers lead to 1?<br />
## INPUTS<br />
n                 A positive real number greater than 2.<br />
## [OPTIONAL INPUTS]<br />
modNum            Modulus number, default modNum = 2<br />
multFac           Multiplication factor, default multFac = 3<br />
addSum            Sumand to add, default addSum = 1<br />
nStop             stop after nStop steps (avoid infinite loop) <br />
                  default nStop = 1000<br />
## OUTPUT<br />
n              	Final value (n=1)<br />
______________________________________________________________________________<br />
Copyright (C) 2019 Edgar Guevara, PhD<br />
______________________________________________________________________________<br />
[![View collatz on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://la.mathworks.com/matlabcentral/fileexchange/73704-collatz)
