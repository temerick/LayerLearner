require 'nn'; require 'rnn'; require 'dpnn'; require 'cunn'; require 'cudnn'


function residual(l)
    return nn.Sequential():add(nn.ConcatTable():add(nn.Identity()):add(l)):add(nn.CAddTable())
end
layers = {
    nn.LSTM(n, n),
    nn.LSTM(n, n)
}
--layersSize = #layers
--for i=1,layersSize do
--    layers[i+layersSize] = residual(layers[i])
--end

text = 
