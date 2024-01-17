#pragma bank 255

// Scene: CopOuter

#include "gbs_types.h"
#include "data/bg_police_station.h"
#include "data/scene_20_collisions.h"
#include "data/palette_4.h"
#include "data/palette_19.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_20_actors.h"
#include "data/scene_20_triggers.h"
#include "data/scene_20_sprites.h"
#include "data/scene_20_init.h"

BANKREF(scene_20)

const struct scene_t scene_20 = {
    .width = 32,
    .height = 32,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_police_station),
    .collisions = TO_FAR_PTR_T(scene_20_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_4),
    .sprite_palette = TO_FAR_PTR_T(palette_19),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 2,
    .n_triggers = 5,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_20_actors),
    .triggers = TO_FAR_PTR_T(scene_20_triggers),
    .sprites = TO_FAR_PTR_T(scene_20_sprites),
    .script_init = TO_FAR_PTR_T(scene_20_init)
};
