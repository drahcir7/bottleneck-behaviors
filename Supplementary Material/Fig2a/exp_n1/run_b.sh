#! /bin/bash

iter=0
for bot in 20 19 18 17 16 
do
	echo $iter
	echo $bot
        python nn_sgd.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize $bot --learningRate 5 --epochs 20000
#wait
done
