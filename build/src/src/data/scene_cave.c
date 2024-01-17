#pragma bank 255

// Scene: Cave

#include "gbs_types.h"
#include "data/bg_cave.h"
#include "data/scene_cave_collisions.h"
#include "data/palette_1.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_cave_actors.h"
#include "data/scene_cave_triggers.h"
#include "data/scene_cave_sprites.h"
#include "data/scene_cave_init.h"

BANKREF(scene_cave)

const struct scene_t scene_cave = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_cave),
    .collisions = TO_FAR_PTR_T(scene_cave_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_1),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 7,
    .n_triggers = 1,
    .n_sprites = 5,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_cave_actors),
    .triggers = TO_FAR_PTR_T(scene_cave_triggers),
    .sprites = TO_FAR_PTR_T(scene_cave_sprites),
    .script_init = TO_FAR_PTR_T(scene_cave_init)
};
