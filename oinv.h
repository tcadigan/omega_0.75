#ifndef OINV_H_
#define OINV_H_

#include "odefs.h"

void conform_lost_object(pob obj);
void conform_lost_objects(int n, pob obj);
void conform_unused_object(pob obj);
void givemonster(struct monster *m, struct object *o);
char *itemid(pob obj);
void dispose_lost_objects(int n, pob obj);
int find_item(pob *o, int id, int chargeval);
void lose_all_items();
void p_drop_at(int x, int y, int n, pob o);

#endif
