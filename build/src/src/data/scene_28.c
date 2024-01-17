#pragma bank 255

// Scene: Restaurant

#include "gbs_types.h"
#include "data/bg_restr.h"
#include "data/scene_28_collisions.h"
#include "data/palette_15.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_28_actors.h"
#include "data/scene_28_triggers.h"
#include "data/scene_28_sprites.h"
#include "data/scene_28_init.h"

BANKREF(scene_28)

const struct scene_t scene_28 = {
    .width = 40,
    .height = 40,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_restr),
    .collisions = TO_FAR_PTR_T(scene_28_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_15),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 6,
    .n_triggers = 2,
    .n_sprites = 5,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_28_actors),
    .triggers = TO_FAR_PTR_T(scene_28_triggers),
    .sprites = TO_FAR_PTR_T(scene_28_sprites),
    .script_init = TO_FAR_PTR_T(scene_28_init)
};
