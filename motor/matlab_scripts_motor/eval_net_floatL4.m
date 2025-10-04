function y = eval_net_floatL4(x_norm, pars_str, ~)
    
    y = evaluateNet(x_norm, pars_str.fc0W, pars_str.fc0B, pars_str.fc1W, pars_str.fc1B, pars_str.fc2W, pars_str.fc2B, pars_str.fc3W, pars_str.fc3B,pars_str.fc4W,pars_str.fc4B);
    y = double(y);
    function output = evaluateNet(x_input, fc0W, fc0B, fc1W, fc1B, fc2W, fc2B, fc3W, fc3B,fc4W,fc4B)
        y0 = fc0W * x_input + fc0B;
        y0 = max(y0, 0);
        
        y1 = fc1W * y0 + fc1B;
        y1 = max(y1, 0);
    
        y2 = fc2W * y1 + fc2B;
        y2 = max(y2, 0);
        
        y3 = fc3W * y2 + fc3B;
        y3 = max(y3, 0);
        output = fc4W * y3 + fc4B;
    end
end


%net = importNetworkFromTensorFlow("qm_net3");
%layer_in = inputLayer([3 1],'UU')
%layers = replaceLayer(layers,'verify_fc0_input',layer_in);
%layers = removeLayers(layers,'RegressionLayer_fc3')
%layers = layers(2:8)
%net.InputNames = 'verify_fc0_input';
%net
% net = removeLayers( net , "RegressionLayer_fc3" );
% net
%net = initialize(net)
%layer0 = getLayer(net,"fc0")
%layer0.InputSize
%invec = dlarray(x_fixed,'C');
%Y = forward(net,invec)
