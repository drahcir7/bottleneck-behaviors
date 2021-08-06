#! /bin/bash


for iter in 3 4 5 6 7 8 9
do
	echo $iter
        python nn_sgd.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize 13 --learningRate 5 --epochs 15000
#wait
done

#for iter in 2 3 4 5 6 7 8 9
#do
#        echo $iter
#        python nn_sgd.py --it_ind $iter --inputSize 100 --outputSize 100 --hiddenSize 16 --learningRate 5 --epochs 30000
#wait
#done



