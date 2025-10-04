function pars_str =  init_net_floatL3(h5_file,~,~,~)

    
    layers = importKerasLayers(h5_file, 'ImportWeights',true);
    net = dlnetwork(layers);
    fc0 = net.Layers(find(arrayfun(@(l) strcmp(l.Name, 'fc0'), net.Layers)));
    fc1 = net.Layers(find(arrayfun(@(l) strcmp(l.Name, 'fc1'), net.Layers)));
    fc2 = net.Layers(find(arrayfun(@(l) strcmp(l.Name, 'fc2'), net.Layers)));
    fc3 = net.Layers(find(arrayfun(@(l) strcmp(l.Name, 'fc3'), net.Layers)));
    pars_str.fc0W = fc0.Weights;
    pars_str.fc0B = fc0.Bias;
    pars_str.fc1W = fc1.Weights;
    pars_str.fc1B = fc1.Bias;
    pars_str.fc2W = fc2.Weights;
    pars_str.fc2B = fc2.Bias;
    pars_str.fc3W = fc3.Weights;
    pars_str.fc3B = fc3.Bias;
    pars_str.wordLength = 1;
    pars_str.fracLength = 0;
end 