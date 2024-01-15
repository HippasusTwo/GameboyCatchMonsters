#pragma bank 255

// Scene: Battle

#include "gbs_types.h"
#include "data/bg_placeholder1.h"
#include "data/scene_19_collisions.h"
#include "data/palette_11.h"
#include "data/palette_12.h"
#include "data/sprite_cursor.h"
#include "data/scene_19_actors.h"
#include "data/scene_19_triggers.h"
#include "data/scene_19_sprites.h"
#include "data/scene_19_init.h"

BANKREF(scene_19)

const struct scene_t scene_19 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_POINTNCLICK,
    .background = TO_FAR_PTR_T(bg_placeholder1),
    .collisions = TO_FAR_PTR_T(scene_19_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_11),
    .sprite_palette = TO_FAR_PTR_T(palette_12),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_cursor),
    .n_actors = 2,
    .n_triggers = 2,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_19_actors),
    .triggers = TO_FAR_PTR_T(scene_19_triggers),
    .sprites = TO_FAR_PTR_T(scene_19_sprites),
    .script_init = TO_FAR_PTR_T(scene_19_init)
};
