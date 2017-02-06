#ifndef __BULLET_OF_HERO_H__
#define __BULLET_OF_HERO_H__

#include "Bullet.h"

enum Type {
	normal,
	circle
};

class BulletOfHero : public Bullet
{
public:
	float alpha;
	float radian;// goc ban
	bool isAdded = false;
	Type type;
	BulletOfHero();
	~BulletOfHero();


	static BulletOfHero* create(float scale);
	void update(float dt);

};

#endif // __B2_SPRITE_H__