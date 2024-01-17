#pragma bank 255

// Scene: CopStation

#include "gbs_types.h"
#include "data/bg_insidestation2.h"
#include "data/scene_23_collisions.h"
#include "data/palette_14.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_23_actors.h"
#include "data/scene_23_triggers.h"
#include "data/scene_23_sprites.h"
#include "data/scene_23_init.h"

BANKREF(scene_23)

const struct scene_t scene_23 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_insidestation2),
    .collisions = TO_FAR_PTR_T(scene_23_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_14),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 2,
    .n_triggers = 2,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_23_actors),
    .triggers = TO_FAR_PTR_T(scene_23_triggers),
    .sprites = TO_FAR_PTR_T(scene_23_sprites),
    .script_init = TO_FAR_PTR_T(scene_23_init)
};
