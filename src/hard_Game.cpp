#include "hard_Game.h"

void hard_Game::generate_enemy() {
    for(size_t i = 0; i < lvl*5; i++){
        int type = rand() % 4;
        abstract_enemy* en = get_enemy(type);
        if(en == nullptr) return;
        v_enemy.insert({i,en});
        v_num_e.insert(i);
    }
}

player * hard_Game::get_cur_player() const {
    return cur_player;
}

void hard_Game::rand_wall() {
    auto size_wall = game_map.walls.size() + 5;
    if(size_wall > 202) return;
    while(game_map.walls.size() < size_wall){
        int x = rand() % 20 + 2;
        int y = rand() % 20 + 2;
        if(game_map.walls.find({x,y}) == game_map.walls.end()){
            build_wall({x,y});
        }
    }
}