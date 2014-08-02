#include "Hitters.as";

const uint8 FIRE_INTERVAL = 20;
const float BULLET_DAMAGE = 0; //Irrelevent
const uint8 PROJECTILE_SPEED = 10; 
const float TIME_TILL_DIE = 120; //Irrelevent

const uint8 CLIP = 3;
const uint8 TOTAL = 9;
const uint8 RELOAD_TIME = 80;

const string AMMO_TYPE = "bomb";

const string FIRE_SOUND = "RPGFire.ogg";
const string RELOAD_SOUND  = "Reload.ogg";

const Vec2f RECOIL = Vec2f(1.0f,0.0);
const float BULLET_OFFSET_X = 10;
const float BULLET_OFFSET_Y = 0;

#include "StandardFire.as";
#include "GunStandard";