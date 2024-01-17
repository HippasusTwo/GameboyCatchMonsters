#pragma bank 255

// Scene: Logo

#include "gbs_types.h"
#include "data/bg_logo.h"
#include "data/scene_logo_collisions.h"
#include "data/palette_2.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_logo_init.h"

BANKREF(scene_logo)

const struct scene_t scene_logo = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_logo),
    .collisions = TO_FAR_PTR_T(scene_logo_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_2),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(scene_logo_init)
};
