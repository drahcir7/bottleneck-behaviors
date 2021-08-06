#! /bin/bash

bot=34
for iter in 3 4 5 8 9
do
	echo $iter
        echo $bot
        nohup python nn_sgd_nc.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize $bot --learningRate 5 --epochs 50000 & > log.txt
#wait
done
