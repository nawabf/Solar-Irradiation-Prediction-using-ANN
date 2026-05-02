# Solar-Irradiation-Prediction-using-ANN
This study aims to develop a more accurate GHI prediction model by correlating satellite data parameters and ground-measured GHI . For this three AI based Networks i.e.,  feed forward neural networks (FFNNs), cascaded forward neural networks (CFNNs), and Elman neural networks (EMNNs) to achieve this goal.
How to run:
1. Save all the files in same folder
2. Run Input file, it will load all the data from excel sheet.
3. Run any of the 10 models. each model incorporate different combination of input.
4. This model will check 1:60 neurons in each model and can check the different number of seeds.
5. The model will give MAPE, RMSE AND MBE values for each neuron and will also show the minimum values
6. If want to trian and test cascaded and elman then in model code line 15 change newff with newcf and newelm.
   
