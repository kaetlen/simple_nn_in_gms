/// @description Mutate

//Mutate neuron weights
    for(var j=0; j<array_height_2d(weights) ; j++){
        for(var k=0; k<array_length_2d(weights, j); k++){
            weights[j,k] = mutate(weights[j,k], 0.4);
        }
    }
    
//Mutate output weights    
    for(var j=0; j<array_height_2d(output_weights) ; j++){
        for(var k=0; k<array_length_2d(output_weights, j); k++){            
            output_weights[j,k] = mutate(output_weights[j,k], 0.4);
        }
    }

