#pragma bank 255

// Scene: Outdoors

#include "gbs_types.h"
#include "data/bg_outside.h"
#include "data/scene_27_collisions.h"
#include "data/palette_13.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_27_actors.h"
#include "data/scene_27_triggers.h"
#include "data/scene_27_sprites.h"
#include "data/scene_27_init.h"

BANKREF(scene_27)

const struct scene_t scene_27 = {
    .width = 32,
    .height = 32,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_outside),
    .collisions = TO_FAR_PTR_T(scene_27_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_13),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 2,
    .n_triggers = 1,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_27_actors),
    .triggers = TO_FAR_PTR_T(scene_27_triggers),
    .sprites = TO_FAR_PTR_T(scene_27_sprites),
    .script_init = TO_FAR_PTR_T(scene_27_init)
};
