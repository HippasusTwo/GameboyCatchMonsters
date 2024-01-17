#pragma bank 255

// Scene: Menu Page 3

#include "gbs_types.h"
#include "data/bg_black.h"
#include "data/scene_menu_3_collisions.h"
#include "data/palette_4.h"
#include "data/palette_18.h"
#include "data/sprite_cursor.h"
#include "data/scene_menu_3_actors.h"
#include "data/scene_menu_3_sprites.h"
#include "data/scene_menu_3_init.h"

BANKREF(scene_menu_3)

const struct scene_t scene_menu_3 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_black),
    .collisions = TO_FAR_PTR_T(scene_menu_3_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_4),
    .sprite_palette = TO_FAR_PTR_T(palette_18),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_cursor),
    .n_actors = 6,
    .n_triggers = 0,
    .n_sprites = 6,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_menu_3_actors),
    .sprites = TO_FAR_PTR_T(scene_menu_3_sprites),
    .script_init = TO_FAR_PTR_T(scene_menu_3_init)
};
