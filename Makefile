GAME = Omega
CFLAGS = -O -g -Wall
LDFLAGS = -lcurses

SRCS = oabyss.c oaux1.c oaux2.c oaux3.c o.c ochar.c ocity.c ocom1.c ocom2.c \
       ocom3.c ocountry.c oeffect1.c oeffect2.c oeffect3.c oenv.c oetc.c \
       ofile.c ogen1.c ogen2.c oguild1.c oguild2.c ohouse.c oinv.c oitem.c \
       oitemf1.c oitemf2.c oitemf3.c olev.c ommelee.c ommove.c omon.c omove.c \
       omovef.c omspec.c omstrike.c omtalk.c opriest.c osave.c oscr.c osite1.c \
       osite2.c ospell.c otime.c otrap.c outil.c ovillage.c 

OBJS = oabyss.o oaux1.o oaux2.o oaux3.o o.o ochar.o ocity.o ocom1.o ocom2.o \
       ocom3.o ocountry.o oeffect1.o oeffect2.o oeffect3.o oenv.o oetc.o \
       ofile.o ogen1.o ogen2.o oguild1.o oguild2.o ohouse.o oinv.o oitem.o \
       oitemf1.o oitemf2.o oitemf3.o olev.o ommelee.o ommove.o omon.o omove.o \
       omovef.o omspec.o omstrike.o omtalk.o opriest.o osave.o oscr.o osite1.o \
       osite2.o ospell.o otime.o otrap.o outil.o ovillage.o

HDRS = oabyss.h oaux1.h oaux2.h oaux3.h ochar.h ocity.h ocom1.h ocom2.h ocom3.h \
       ocountry.h odate.h odefs.h oeffect1.h oeffect2.h oeffect3.h oenv.h oetc.h \
       ofile.h ogen1.h ogen2.h oglob.h oguild1.h oguild2.h o.h ohouse.h \
       oiinit.h oinv.h oitemf1.h oitemf2.h oitemf3.h oitem.h olev.h ominit.h \
       ommelee.h ommove.h omon.h omovef.h omove.h omspec.h omstrike.h omtalk.h \
       opriest.h osave.h oscr.h osite1.h osite2.h ospell.h otrap.h otime.h \
       outil.h ovillage.h

all: $(GAME) crypt decrypt

$(GAME): $(OBJS) $(HDRS) Makefile
	$(CC) -o $(GAME) $(OBJS) $(LDFLAGS)

CRYPT_SRC = crypt.c
CRYPT_OBJ = crypt.o

crypt.o: crypt.c
	$(CC) -c $(CFLAGS) crypt.c

crypt: $(CRYPT_OBJ)
	$(CC) -o crypt $(CRYPT_OBJ)

DECRYPT_SRC = decrypt.c
DECRYPT_OBJ = decrypt.o

decrypt.o: decrypt.c
	$(CC) -c $(CFLAGS) decrypt.c

decrypt: $(DECRYPT_OBJ)
	$(CC) -o decrypt $(DECRYPT_OBJ)

clean:
	rm -rf crypt decrypt $(DECRYPT_OBJ) $(CRYPT_OBJ) $(OBJS) $(GAME)

oabyss.o: oabyss.h ogen1.h oglob.h outil.h
oaux1.o: oaux1.h oaux2.h oaux3.h oeffect1.h oeffect3.h oetc.h ogen1.h oglob.h oinv.h olev.h ommove.h omon.h oscr.h outil.h
oaux2.o: oaux2.h oabyss.h oaux1.h ochar.h ocity.h ocom3.h ocountry.h oeffect3.h oenv.h ofile.h ogen1.h ogen2.h oglob.h ohouse.h oinv.h oitem.h oitemf2.h olev.h ommelee.h omon.h oscr.h ovillage.h outil.h
oaux3.o: oaux3.h oaux1.h oaux2.h ochar.h ocity.h ocom2.h ocom3.h oeffect1.h oeffect2.h oeffect3.h oetc.h oglob.h oinv.h oitem.h olev.h omon.h omove.h oscr.h osite1.h outil.h
o.o: o.h oaux2.h ochar.h ocity.h ocom1.h ocom2.h ocountry.h ofile.h ogen1.h oglob.h oitem.h otime.h osave.h oscr.h ospell.h outil.h
ochar.o: ochar.h oaux1.h oaux2.h ocom2.h ofile.h oglob.h oscr.h outil.h
ocity.o: ocity.h ogen1.h oglob.h olev.h omon.h outil.h
ocom1.o: ocom1.h oaux1.h oaux3.h ocom2.h ocom3.h oeffect1.h ofile.h oglob.h oinv.h omovef.h oscr.h outil.h
ocom2.o: ocom2.h oaux1.h oaux2.h oaux3.h oeffect1.h oeffect3.h ogen1.h oglob.h oinv.h oitem.h olev.h omon.h omovef.h osave.h oscr.h osite1.h ospell.h outil.h
ocom3.o: ocom3.h oaux1.h oaux2.h oaux3.h ocom2.h odate.h ofile.h ogen1.h oglob.h oinv.h oitem.h omon.h omovef.h oscr.h osite2.h outil.h
ocountry.o: ocountry.h ogen1.h oglob.h olev.h omon.h oscr.h outil.h
oeffect1.o: oeffect1.h oaux1.h ochar.h oeffect3.h oglob.h oitem.h oinv.h omon.h oscr.h outil.h
oeffect2.o: oeffect2.h oaux1.h oaux2.h oeffect1.h oeffect3.h ogen1.h oglob.h omovef.h oscr.h outil.h
oeffect3.o: oeffect3.h oaux1.h oaux2.h oaux3.h oeffect1.h ogen1.h oglob.h oinv.h oitem.h olev.h omon.h oscr.h ospell.h outil.h
oenv.o: oenv.h ogen1.h oglob.h olev.h omon.h oscr.h outil.h
oetc.o: oetc.h oglob.h oscr.h outil.h
ofile.o: ofile.h oaux1.h ochar.h oglob.h oscr.h outil.h
ogen1.o: ogen1.h oaux1.h ogen2.h oglob.h olev.h oscr.h outil.h
ogen2.o: ogen2.h ogen1.h oglob.h olev.h oscr.h outil.h
oguild1.o: oguild1.h oaux1.h oaux2.h oetc.h oglob.h oinv.h omon.h oscr.h osite2.h otime.h outil.h
oguild2.o: oguild2.h oaux1.h oaux2.h ochar.h oeffect1.h oeffect3.h oglob.h oinv.h oitem.h oscr.h osite2.h outil.h
ohouse.o: ohouse.h ogen1.h oglob.h olev.h omon.h oscr.h outil.h
oinv.o: oinv.h oaux1.h oaux2.h ofile.h oglob.h oitem.h olev.h omon.h oscr.h outil.h
oitem.o: oitem.h oeffect2.h oetc.h oglob.h oitemf1.h oitemf2.h oitemf3.h oinv.h omon.h oscr.h outil.h
oitemf1.o: oitemf1.h oaux1.h oaux2.h ochar.h oeffect1.h oeffect2.h oeffect3.h ogen1.h oglob.h oinv.h oitemf2.h omove.h omovef.h oscr.h ospell.h outil.h
oitemf2.o: oitemf2.h oaux1.h oaux2.h oeffect1.h oeffect2.h oeffect3.h oglob.h oinv.h ommove.h omon.h oscr.h outil.h
oitemf3.o: oitemf3.h oaux1.h oaux2.h ochar.h oeffect1.h oeffect3.h oetc.h oglob.h oinv.h oitemf1.h omon.h oscr.h outil.h
olev.o: olev.h oglob.h oitem.h omon.h outil.h
ommelee.o: ommelee.h oaux1.h oaux2.h oeffect3.h oglob.h omon.h omspec.h oscr.h outil.h
ommove.o: ommove.h oglob.h omon.h oscr.h outil.h
omon.o: omon.h oaux1.h oaux3.h oeffect3.h oetc.h ofile.h oglob.h oinv.h oitem.h olev.h ommelee.h ommove.h omovef.h omspec.h omstrike.h omtalk.h oscr.h outil.h
omove.o: omove.h oaux1.h oaux2.h oaux3.h ochar.h oeffect1.h oeffect2.h oeffect3.h ogen1.h oglob.h oinv.h olev.h oscr.h outil.h
omovef.o: omovef.h oglob.h oguild1.h oguild2.h omon.h omove.h opriest.h oscr.h osite1.h osite2.h otrap.h outil.h
omspec.o: omspec.h oaux1.h oaux2.h oaux3.h ochar.h oeffect1.h oeffect2.h oeffect3.h ogen1.h oglob.h oinv.h ommove.h omon.h omspec.h omtalk.h oscr.h outil.h
omstrike.o: omstrike.h oaux1.h oaux2.h oeffect1.h oglob.h oscr.h outil.h
omtalk.o: omtalk.h oaux1.h oaux2.h ochar.h oeffect1.h oeffect3.h oetc.h oglob.h oinv.h ommove.h omon.h oscr.h osite2.h outil.h
opriest.o: opriest.h oaux1.h oaux2.h ochar.h oeffect1.h oeffect3.h oetc.h oglob.h oinv.h oitem.h oscr.h outil.h
osave.o: osave.h oaux1.h ofile.h oglob.h o.h oscr.h outil.h
oscr.o: oscr.h oglob.h
osite1.o: osite1.h oglob.h
osite2.o: osite2.h oglob.h
ospell.o: oglob.h
otime.o: otime.h oglob.h
otrap.o: otrap.h oglob.h
outil.o: outil.h oglob.h 
ovillage.o: ovillage.h oglob.h
oaux1.h: odefs.h
oaux2.h: odefs.h
oeffect2.h: odefs.h
oglob.h: odefs.h
ogen1.h: odefs.h
oinv.h: odefs.h
oitem.h: odefs.h
oitemf1.h: odefs.h
oitemf2.h: odefs.h
oitemf3.h: odefs.h
olev.h: odefs.h
ommelee.h: odefs.h
ommove.h: odefs.h
omovef.h: odefs.h
omspec.h: odefs.h
omstrike.h: odefs.h
omtalk.h: odefs.h
omon.h: odefs.h
opriest.h: odefs.h
osave.h: odefs.h
oscr.h: odefs.h
