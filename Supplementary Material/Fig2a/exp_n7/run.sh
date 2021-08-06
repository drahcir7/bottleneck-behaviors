#! /bin/bash


for iter in 0 1 2 3 4 #5 6 7 8 9
do
	echo $iter
        python nn_sgd.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize 29 --learningRate 5 --epochs 20000
#wait
done
