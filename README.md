# SimpleTower
Project "SimpleTower" - a turn-based game.
It consists of header files: "map", "tower", "enemy", "game", "player".
The map contains a class, methods for generating, saving and loading from the selected directory of the 25/25 map, generating a path for the enemy on the map, cells for placing the tower, on the edge of the map there are (different from each other in coordinates) 2 positions (input and output).
Tower contains classes for 5 types of towers (cannon, wizzard, archer, crossbow, inferno), differing in price, range and firing rate. Each tower has its own visual model. Wizzard and inferno have their own effect (slow, increasing damage over time).
Enemy consists of classes and methods to implement 4 types of attackers: rogue, barbarian, giant, shieldman. Each enemy has its own visual model, its own movement speed (giant -> shieldman -> barbarian -> rogue), amount of health (if the health reaches 0, the enemy disappears from the map).
Player contains a class and methods to implement saving the score and the number of coins received after destroying an enemy
The "game" header file contains functions to implement the game. The game has 3 levels of difficulty, they differ in the number and type of opponents.
