//takeDamage(damage);
//If augmenting player's health: set global.greyHealthBarDowning to false;

if(!global.greyHealthBarDowning) {
    global.greyHealthBarDowning = true;

    global.oldXHealthBar = global.endXHealthBar;
    
    oControlHUD.alarm[8] = room_speed;
    hbStartToDown = false;
}

audio_play_sound(soBobHurt, 1, 0);
playerHealth -= argument0;
global.endXHealthBar = (264*(playerHealth/100));

if(playerHealth <= 0) {
    playerHealth = 0;
    //Dying
}
