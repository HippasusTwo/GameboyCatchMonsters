#pragma bank 255

// Scene: Title Screen

#include "gbs_types.h"
#include "data/bg_titlescreen.h"
#include "data/scene_title_screen_collisions.h"
#include "data/palette_3.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_title_screen_init.h"

BANKREF(scene_title_screen)

const struct scene_t scene_title_screen = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_titlescreen),
    .collisions = TO_FAR_PTR_T(scene_title_screen_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_3),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(scene_title_screen_init)
};
