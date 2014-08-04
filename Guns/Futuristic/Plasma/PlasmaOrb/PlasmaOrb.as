void onInit( CBlob@ this )
{
	this.Tag("exploding");
	this.set_f32("explosive_radius", 12.0f );
	this.set_f32("explosive_damage", 4.0f);
	this.set_f32("map_damage_radius", 15.0f);
	this.set_f32("map_damage_ratio", -1.0f); //heck no!
}	

void onTick( CBlob@ this )
{     
	if(this.getCurrentScript().tickFrequency == 1) {
		this.getShape().SetGravityScale( 0.0f );
		this.server_SetTimeToDie(3);
		this.SetLight( true );
		this.SetLightRadius( 24.0f );
		this.SetLightColor( SColor(255, 211, 121, 224 ) );
		this.set_string("custom_explosion_sound", "OrbExplosion.ogg");
		this.getSprite().SetZ(1000.0f);
		
		this.getCurrentScript().tickFrequency = 10;
	}
}	

bool doesCollideWithBlob(CBlob@ this, CBlob@ blob) {
	bool check = this.getTeamNum() != blob.getTeamNum();
	if(!check) {
		CShape@ shape = blob.getShape();
		check = (shape.isStatic() && !shape.getConsts().platform);
	}

	if (check) {
		return true;
	}

	return false;
}

void onCollision(CBlob@ this, CBlob@ blob, bool solid) {
	if (solid) {
		if(blob !is null && blob.getTeamNum() != this.getTeamNum())
			this.server_Die();			
	}
}
