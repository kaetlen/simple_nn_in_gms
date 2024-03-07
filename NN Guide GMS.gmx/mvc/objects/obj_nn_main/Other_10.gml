/// @description Train

//Search for fittest agent
    var _fittest = noone;   //Agent that has highest fitness score
    var _fitness = -99999;  //Fitness score of the most fit agent
    
    with(obj_arrowhead){
        //If current instance has higher fitness than rememberd inst
        if(fitness > _fitness){
            _fittest = id;
            _fitness = fitness;
        }
    }
    
//Copy weights and biases
    var _weights;
    var _bias;
    var _output_weights;
    var _output_bias;
    
    //Save DNA for future use
    with(_fittest){
        _weights = weights;
        _bias = bias;        
        _output_weights = output_weights;
        _output_bias = output_bias;
    }

    with(obj_arrowhead){
        if(id != _fittest){
            //Copy DNA
            weights = _weights;
            bias = _bias;
            output_weights = _output_weights;
            output_bias = _output_bias;
            
            //Mutate
            event_user(1);
        }
        //Reset
        event_user(2);
    }
    


