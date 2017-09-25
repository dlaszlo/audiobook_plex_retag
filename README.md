# README #

MP3-ak újra tag-elése, hogy a PLEX média szerver megfelelően olvassa be a hangoskönyv albumokat.

## Könyvtár szerkezet ##

A hangoskönyveket a következő könyvtárszerkezetben kell elhelyezni:

* ./Benedek Elek
* ./Benedek Elek/Édes anyaföldem
* ./Benedek Elek/Édes anyaföldem/0336aa00.mp3
* ./Benedek Elek/Édes anyaföldem/0336af00.mp3
* stb..
* ./Benedek Elek/Honszerző Árpád
* ./Benedek Elek/Honszerző Árpád/1968aa00.mp3
* ./Benedek Elek/Honszerző Árpád/1968af01.mp3
* ./Benedek Elek/Honszerző Árpád/1968af02.mp3
* stb..
* ./Benedek Elek/Székely Tündérország
* ./Benedek Elek/Székely Tündérország/2340aa00.mp3
* ./Benedek Elek/Székely Tündérország/2340af01.mp3
* ./Benedek Elek/Székely Tündérország/2340af02.mp3
* stb..

## Aktuális könyvtár tartalmának (mp3) konvertálása ##

Be kell lépni a könyvtárba, ami az MP3-akat tartalmazza, és el kell indítani a következő script-et:

./audiobook_tag.sh

## Aktuális könyvtárból nyíló összes alkönyvtár tartalmának (mp3) konvertálása ##

Be kell lépni a könyvtárba, ami az albumokat tartalmazza, és el kell indítani a következő script-et:

./audiobook_tag_all.sh

## Működés ##

A script törli az összes mp3 tag-et, és beállítja a következő tag-eket:

* Szerző = Szülő könyvtár neve
* Album = Aktuális könyvtár neve
* Cím = Szerző - Album - Track szám
* Track szám = sorszám

## Függőség ##

* mid3v2