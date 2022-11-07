score += 10;
audio_play_sound(snd_die,1,false);
instance_destroy();
with(other){
	instance_destroy();
	if(sprite_index == spr_astroid_huge){
		repeat(choose(2,3)){
			var new_astroid = instance_create_layer(x,y,"Instances",obj_astroid);
			new_astroid.sprite_index = spr_astroid_large;
		}
	}
	else if(sprite_index == spr_astroid_large){
		repeat(choose(2,3)){
			var new_astroid = instance_create_layer(x,y,"Instances",obj_astroid);
			new_astroid.sprite_index = spr_astroid_small;
		}
	}
	repeat(10){
		 instance_create_layer(x,y,"Instances",obj_debris);
	}
}

