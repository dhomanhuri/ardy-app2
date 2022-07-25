import numpy as np
import time
import joblib

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def deriv_sigmoid(x):
    return x * (1.0 - x)

class Neural_Network:
    def __init__(self, input, hidden, output, learningRate):
        self.n_input = input
        self.n_hidden = hidden
        self.n_output = output
        self.learning_rate = learningRate
        self.bias_hidden = np.ones((hidden, 1))
        self.bias_output = np.ones((output, 1))

        self.weight_hidden = np.random.uniform(low=-0.2, high=0.2, size=(self.n_hidden, self.n_input))
        self.weight_output = np.random.uniform(low=-0.2, high=0.2, size=(self.n_output, self.n_hidden))

    def forward(self, input_list):
        inputs = np.array(input_list, ndmin=2).T
        self.hiddenLayer = np.dot(self.weight_hidden, inputs) + self.bias_hidden
        self.Net_hiddenLayer = sigmoid(self.hiddenLayer)

        self.outputLayer = np.dot(self.weight_output, self.Net_hiddenLayer) + self.bias_output
        self.Net_outputLayer = sigmoid(self.outputLayer)
        return self.Net_outputLayer

    def calc_loss(self, target_list):
        targets = np.array(target_list, ndmin=2).T
        m = targets.shape[0]
        cost = 0
        cost = cost + ((self.Net_outputLayer - targets) ** 2).sum() / m
        return cost

    def backprop(self, input_list, target_list):
        inputs = np.array(input_list, ndmin=2).T
        targets = np.array(target_list, ndmin=2).T
        m = targets.shape[0]

        self.output_error = self.Net_outputLayer - targets
        self.output_error_weight = np.dot(self.output_error * deriv_sigmoid(self.Net_outputLayer),self.Net_hiddenLayer.T) * (1 / m)
        self.output_error_bias = np.sum(self.output_error, axis=1, keepdims=True) * (1 / m)

        self.hidden_error = np.dot(self.weight_output.T, self.output_error)
        self.hidden_error_weight = np.dot(self.hidden_error * deriv_sigmoid(self.Net_hiddenLayer), inputs.T) * (1 / m)
        self.hidden_error_bias = np.sum(self.hidden_error, axis=1, keepdims=True) * (1 / m)

    def update_params(self):
        self.weight_output = self.weight_output - self.learning_rate * self.output_error_weight
        self.weight_hidden = self.weight_hidden - self.learning_rate * self.hidden_error_weight
        self.bias_output = sigmoid(self.bias_output - self.learning_rate * self.output_error_bias)
        self.bias_hidden = sigmoid(self.bias_hidden - self.learning_rate * self.hidden_error_bias)

    def predict(self, input_list, weight_hidden, weight_output, bias_hidden, bias_output):
        inputs = np.array(input_list, ndmin=2).T
        hiddenLayer = np.dot(weight_hidden, inputs) + bias_hidden
        Net_hiddenLayer = sigmoid(hiddenLayer)

        outputLayer = np.dot(weight_output,Net_hiddenLayer) + bias_output
        self.Net_outputLayer = sigmoid(outputLayer)
        return self.Net_outputLayer

    def train_data(self, data_train, epochs):
        accu_train = []
        all_label = []
        for i in range(epochs):
            loss = 0
            startTime = time.time()
            for record in data_train:
                all_values = record.split(',')
                inputs = np.asfarray(all_values[1:])
                
                targets = np.zeros(self.n_output) + 0.01
                targets[int(all_values[0])] = 0.99
                correct_label = int(all_values[0])
                self.forward(inputs)
                loss = self.calc_loss(targets)
                self.backprop(inputs, targets)
                self.update_params()

                outputs = self.predict(inputs, self.weight_hidden, self.weight_output, self.bias_hidden, self.bias_output)

                weight_params = [self.weight_hidden, self.weight_output, self.bias_hidden, self.bias_output]

                # save bobot
                filename = 'weight_param.pkl'
                joblib.dump(weight_params, filename)
    
                label = np.argmax(outputs)
                all_label.append(label)
                if (label == correct_label):
                    accu_train.append(1)
                else:
                    accu_train.append(0)
            if loss < 0.0001:
                break
                print("Epochs = ", i)
                print("Loss =", loss)
            if i % 10 == 0:
                print("Epochs = ", i)
                print("Loss =", loss)
        accu_array = np.asarray(accu_train)
        self.accu_train = accu_array.sum() / accu_array.size * 100
        self.final_loss = loss

        print("Epochs = ", i)
        print("Loss =", loss)
        print("Accu Train: ", self.accu_train, "%")
        print('The script took {0} second !'.format(time.time() - startTime))
