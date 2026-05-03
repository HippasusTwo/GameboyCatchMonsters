#pragma bank 255

// Scene: Mart Town

#include "gbs_types.h"
#include "data/bg_town.h"
#include "data/scene_21_collisions.h"
#include "data/palette_12.h"
#include "data/palette_19.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_21_actors.h"
#include "data/scene_21_triggers.h"
#include "data/scene_21_sprites.h"
#include "data/scene_21_init.h"

BANKREF(scene_21)

const struct scene_t scene_21 = {
    .width = 80,
    .height = 40,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_town),
    .collisions = TO_FAR_PTR_T(scene_21_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0, 0, 0)
    },
    .scroll_bounds = {
        .left = 0,
        .top = 0,
        .right = 480,
        .bottom = 176
    },
    .palette = TO_FAR_PTR_T(palette_12),
    .sprite_palette = TO_FAR_PTR_T(palette_19),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 10,
    .n_triggers = 6,
    .n_sprites = 6,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_21_actors),
    .triggers = TO_FAR_PTR_T(scene_21_triggers),
    .sprites = TO_FAR_PTR_T(scene_21_sprites),
    .script_init = TO_FAR_PTR_T(scene_21_init)
};
