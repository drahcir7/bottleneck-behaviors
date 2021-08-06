#! /bin/bash

bot=44
for iter in 1
#for iter in 1 3 4 6 9 #19 18 17 16 
do
	echo $iter
	echo $bot
        nohup python nn_sgd_nc.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize $bot --learningRate 5 --epochs 50000 & > log.txt
#wait
done
