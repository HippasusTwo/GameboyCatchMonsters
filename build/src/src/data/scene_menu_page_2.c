#pragma bank 255

// Scene: Menu Page 2

#include "gbs_types.h"
#include "data/bg_menu_page2.h"
#include "data/scene_menu_page_2_collisions.h"
#include "data/palette_4.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_menu_page_2_actors.h"
#include "data/scene_menu_page_2_sprites.h"
#include "data/scene_menu_page_2_init.h"

BANKREF(scene_menu_page_2)

const struct scene_t scene_menu_page_2 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_menu_page2),
    .collisions = TO_FAR_PTR_T(scene_menu_page_2_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_4),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 5,
    .n_triggers = 0,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_menu_page_2_actors),
    .sprites = TO_FAR_PTR_T(scene_menu_page_2_sprites),
    .script_init = TO_FAR_PTR_T(scene_menu_page_2_init)
};
