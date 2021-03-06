#ifndef OAUX3_H_
#define OAUX3_H_

void default_maneuvers();
int maneuvers();
void destroy_order();
void expandsiteabbrevs(char prefix[80]);
char *countryid(char terrain);
void indoors_random_event();
void minute_status_check();
void tenminute_status_check();
void hourly_check();
void tenminute_check();
void countrysearch();
void terrain_check(int takestime);
int parsecitysite();
int hostilemonstersnear();
char getlocation();
void alert_guards();
int stonecheck(int alignment);
int magic_resist(int hostile_magic);

#endif
