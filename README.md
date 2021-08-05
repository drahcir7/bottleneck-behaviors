# bottleneck-behaviors
Code from the project "Modeling bottlenecks, modularity, and context-dependency in behavioral control" born at the 2019 Boulder Summer School on Theoretical Biophysics (https://boulderschool.yale.edu/2019/boulder-school-2019). 

The contributions to this work are equally from: Veronika Dubinkina, Anjalika Nande, Riccardo Ravasio and Grace Zhang. The project has been designed and supervised by Gordon Berman (http://www.biology.emory.edu/Berman/).

### Citing
```
@article{,
  author       = {},
  title        = {},
  volume       = {},
  number       = {},
  month        = ,
  year         = ,
  pages        = {},
  doi          = {},
}
```

## Run the neural network simulation

In the Neural network folder, the script nn_bottleneck.sh allows for choosing the parameters needed for the NN simulation

- *input layer size*   : N, the number of decision neurons. 
- *output layer size*  : M, the number of motor neurons.
- *hidden layer size*  : R, the number of descending neurons.
- *sparsity*           : k, sets the sparsity of the behavioral matrix. Simulations in the paper are run so that k/N = 0.1, k is then chosen accordingly.
- *number of clusters* : sets the number of clusters in the behavioral matrix. If equal to zero then no clusters.
- *noise*              : sets the noise in the construction of the cluster, hence the level of modularity, computed with the networkx package (community module) by looking at the modularity of the best partition of the behavioral matrix imported as a graph.
- *number of samples*  : sets the number of samples to run the analysis, each sample will have a different initialisation of parameters.

The parameters can be looped over to perform the different analysis presented in the paper. In the current version of the script N, M are kept fixed while varying R and initial condition.

Define the work path where you want your simulations to run in the bash script (work_dir).

The neural network is built with PyTorch, get it here https://pytorch.org/get-started/locally/.

The python code is launched in the bash script with grun (also in the Neural network folder, put it in your /usr/local/bin) and will run on GPUs (torch.cuda) if available. If torch.cuda is not available, it will run on CPU.

## Rerun the analysis of data produced with the NN code

The codes to produce the figures shown in the paper are organised in separate folders. You should extract the data from the compressed folders for Figures 4, 5 (parameters_boulder_270420.tar.gz) and Figure 2b (varying_systemsize.tar.gz). All data have been obtained through simulating the neural network in the relevant regimes.
