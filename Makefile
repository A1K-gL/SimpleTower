CC = g++
CFLAGS = -Wall -pedantic -Wsuggest-override -fsanitize=address -g -std=c++17
SRC = src/abstract_enemy.cpp  src/default_Game.cpp  src/map.cpp src/abstract_tower.cpp  src/hard_Game.cpp     src/medium_Game.cpp          src/inferno.cpp       src/player.cpp         src/low_Game.cpp      src/wizard.cpp         src/main.cpp
SRCS = src/abstract_enemy.h  src/crossbow.h      src/inferno.h      src/rogue.h src/abstract_tower.h  src/default_Game.h  src/low_Game.h     src/shieldman.h src/archer.h          src/giant.h         src/map.h          src/wizard.h src/barbarian.h     src/hard_Game.h     src/medium_Game.h src/cannon.h          src/hash_pair.h     src/player.h

all : dirs build compile doc

dirs:
	mkdir objects
	mkdir doc

build : objects/abstract_enemy.o objects/hard_Game.o objects/main.o objects/player.o objects/abstract_tower.o objects/inferno.o objects/map.o objects/wizard.o objects/default_Game.o objects/low_Game.o objects/medium_Game.o

compile : objects/abstract_enemy.o objects/hard_Game.o objects/main.o objects/player.o objects/abstract_tower.o objects/inferno.o objects/map.o objects/wizard.o objects/default_Game.o objects/low_Game.o objects/medium_Game.o
	${CC} ${CFLAGS} $^ -o SimpleTower

run:
		./SimpleTower

objects/%.o: src/%.cpp
	${CC} ${CFLAGS} -c $< -o $@


objects/abstract_enemy.o: src/abstract_enemy.cpp src/abstract_enemy.h
objects/abstract_enemy.o: src/abstract_enemy.h
objects/abstract_tower.o: src/abstract_tower.cpp src/abstract_tower.h
objects/abstract_tower.o: src/abstract_tower.h
objects/archer.o: src/archer.h src/abstract_tower.h
objects/barbarian.o: src/barbarian.h src/abstract_enemy.h
objects/cannon.o: src/cannon.h src/abstract_tower.h
objects/crossbow.o: src/crossbow.h src/abstract_tower.h
objects/default_Game.o: src/default_Game.cpp src/default_Game.h src/map.h \
 src/player.h src/cannon.h src/abstract_tower.h src/archer.h \
 src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h
objects/default_Game.o: src/default_Game.h src/map.h src/player.h src/cannon.h \
 src/abstract_tower.h src/archer.h src/crossbow.h src/wizard.h \
 src/inferno.h src/barbarian.h src/abstract_enemy.h src/rogue.h \
 src/shieldman.h src/giant.h src/hash_pair.h
objects/giant.o: src/giant.h src/abstract_enemy.h
objects/hard_Game.o: src/hard_Game.cpp src/hard_Game.h src/default_Game.h \
 src/map.h src/player.h src/cannon.h src/abstract_tower.h src/archer.h \
 src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h
objects/hard_Game.o: src/hard_Game.h src/default_Game.h src/map.h src/player.h \
 src/cannon.h src/abstract_tower.h src/archer.h src/crossbow.h \
 src/wizard.h src/inferno.h src/barbarian.h src/abstract_enemy.h \
 src/rogue.h src/shieldman.h src/giant.h src/hash_pair.h
objects/hash_pair.o: src/hash_pair.h src/abstract_enemy.h
objects/inferno.o: src/inferno.cpp src/inferno.h src/abstract_tower.h
objects/inferno.o: src/inferno.h src/abstract_tower.h
objects/low_Game.o: src/low_Game.cpp src/low_Game.h src/default_Game.h src/map.h \
 src/player.h src/cannon.h src/abstract_tower.h src/archer.h \
 src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h
objects/low_Game.o: src/low_Game.h src/default_Game.h src/map.h src/player.h \
 src/cannon.h src/abstract_tower.h src/archer.h src/crossbow.h \
 src/wizard.h src/inferno.h src/barbarian.h src/abstract_enemy.h \
 src/rogue.h src/shieldman.h src/giant.h src/hash_pair.h
objects/main.o: src/main.cpp src/low_Game.h src/default_Game.h src/map.h \
 src/player.h src/cannon.h src/abstract_tower.h src/archer.h \
 src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h src/medium_Game.h src/hard_Game.h
objects/map.o: src/map.cpp src/map.h src/player.h src/cannon.h \
 src/abstract_tower.h src/archer.h src/crossbow.h src/wizard.h \
 src/inferno.h src/barbarian.h src/abstract_enemy.h src/rogue.h \
 src/shieldman.h src/giant.h src/hash_pair.h
objects/map.o: src/map.h src/player.h src/cannon.h src/abstract_tower.h \
 src/archer.h src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h
objects/medium_Game.o: src/medium_Game.cpp src/medium_Game.h src/default_Game.h \
 src/map.h src/player.h src/cannon.h src/abstract_tower.h src/archer.h \
 src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h
objects/medium_Game.o: src/medium_Game.h src/default_Game.h src/map.h \
 src/player.h src/cannon.h src/abstract_tower.h src/archer.h \
 src/crossbow.h src/wizard.h src/inferno.h src/barbarian.h \
 src/abstract_enemy.h src/rogue.h src/shieldman.h src/giant.h \
 src/hash_pair.h
objects/player.o: src/player.cpp src/player.h
objects/player.o: src/player.h
objects/rogue.o: src/rogue.h src/abstract_enemy.h
objects/shieldman.o: src/shieldman.h src/abstract_enemy.h
objects/wizard.o: src/wizard.cpp src/wizard.h src/abstract_tower.h
objects/wizard.o: src/wizard.h src/abstract_tower.h


doc:doc/doxyfile.inc $(SRC)
	doxygen Doxyfile

doc/doxyfile.inc: Doxyfile
	echo INPUT         =  ./src > doc/doxyfile.inc
	echo FILE_PATTERNS =  *.h $(SRCS) >> doc/doxyfile.inc


clean :
		rm -rf SimpleTower
		rm -r doc objects

