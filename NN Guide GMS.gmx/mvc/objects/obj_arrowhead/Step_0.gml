var target = obj_target;

//Give input
   inputs[0] = angle_difference(image_angle, point_direction(x, y, target.x, target.y));

//Execute feed forward
   scr_nn_feedforward();
   
   
var turn_speed = 5; //How fast it turn
var move_speed = 3; //How fast the arrow head move

//Turn
    var left = 0, right = 0;
    image_angle += turn_speed*(outputs[0]);

//Move
    x += lengthdir_x(move_speed, image_angle);
    y += lengthdir_y(move_speed, image_angle);     

