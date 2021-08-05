# bottleneck-behaviors
Code from the project "Modeling bottlenecks, modularity, and context-dependency in behavioral control" born at the 2019 Boulder Summer School on Theoretical Biophysics (https://boulderschool.yale.edu/2019/boulder-school-2019). 

The contributions to this work are equally from: Veronika Dubinkina, Anjalika Nande, Riccardo Ravasio and Grace Zhang. The project has been designed and supervised by Gordon Berman.

### Run the neural network simulation

In the Neural network folder the script nn_bottleneck.sh allows for choosing the parameters needed for the NN simulation

1. *input layer size*   : N, the number of decision neurons, kept fixed
2. *output layer size*  : M, the number of motor neurons, kept fixed
3. *hidden layer size*  : R, the number of descending neurons, can be looped over for fixed N, M
4. *sparsity*           : k, sets the sparsity of the behavioral matrix. Simulations in the paper are run so that k/N = 0.1.
5. *number of clusters* : sets the number of clusters in the behavioral matrix. If equal to zero then no clusters.
6. *noise*              : sets the noise in the construction of the cluster, hence the level of modularity, computed with the networkx package (community module) by looking at the modularity of the best partition of the behavioral matrix imported as a graph.
7. *number of samples*  : sets the number of samples to run the analysis, each sample will have a different initialisation of parameters.

Define the work path where you want your simulations to run in the bash script (work_dir).

The python code is launched in the bash script with grun (also in the Neural network folder, put it in your /usr/local/bin) and will run on GPUs (cuda) if available. If cuda is not available, it will run on CPU. If you do not have cuda installed you can just run it as a normal python script without grun.

### Rerun the analysis of data produced with the NN code

The codes to produce figures in the paper are organised in separate folders. You should extract the data from the compressed folders for Figures 4, 5 (parameters_boulder_270420.tar.gz) and Figure 2b (varying_systemsize.tar.gz).
