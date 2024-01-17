#pragma bank 255

// Scene: IndustryWorkyard

#include "gbs_types.h"
#include "data/bg_overworld_pixelnook_indu.h"
#include "data/scene_25_collisions.h"
#include "data/palette_4.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_25_actors.h"
#include "data/scene_25_triggers.h"
#include "data/scene_25_sprites.h"
#include "data/scene_25_init.h"

BANKREF(scene_25)

const struct scene_t scene_25 = {
    .width = 40,
    .height = 40,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_overworld_pixelnook_indu),
    .collisions = TO_FAR_PTR_T(scene_25_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_4),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 2,
    .n_triggers = 2,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_25_actors),
    .triggers = TO_FAR_PTR_T(scene_25_triggers),
    .sprites = TO_FAR_PTR_T(scene_25_sprites),
    .script_init = TO_FAR_PTR_T(scene_25_init)
};
