#pragma bank 255

// Scene: Mart

#include "gbs_types.h"
#include "data/sprite_inside_seven_eleven.h"
#include "data/scene_24_collisions.h"
#include "data/palette_1.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_24_actors.h"
#include "data/scene_24_triggers.h"
#include "data/scene_24_sprites.h"
#include "data/scene_24_init.h"

BANKREF(scene_24)

const struct scene_t scene_24 = {
    .width = 22,
    .height = 20,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(sprite_inside_seven_eleven),
    .collisions = TO_FAR_PTR_T(scene_24_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_1),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 1,
    .n_triggers = 2,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_24_actors),
    .triggers = TO_FAR_PTR_T(scene_24_triggers),
    .sprites = TO_FAR_PTR_T(scene_24_sprites),
    .script_init = TO_FAR_PTR_T(scene_24_init)
};
