#! /bin/bash

bot=26
for iter in 0 1 3 5
do
	echo $iter
        nohup python nn_sgd_nc.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize $bot --learningRate 5 --epochs 50000 & > log_$iter.out
#wait
done
