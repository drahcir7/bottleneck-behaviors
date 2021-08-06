#! /bin/bash

bot=30
for iter in 0 1 2 3 4 5 6 7 8 9 #19 18 17 16 
do
	echo $iter
	echo $bot
        python nn_sgd_nc.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize $bot --learningRate 5 --epochs 20000
#wait
done
