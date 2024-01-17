#pragma bank 255

// Scene: Scene 30

#include "gbs_types.h"
#include "data/bg_highway.h"
#include "data/scene_30_collisions.h"
#include "data/palette_13.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_30_actors.h"
#include "data/scene_30_triggers.h"
#include "data/scene_30_sprites.h"
#include "data/scene_30_init.h"
#include "data/scene_30_p_hit1.h"

BANKREF(scene_30)

const struct scene_t scene_30 = {
    .width = 40,
    .height = 40,
    .type = SCENE_TYPE_ADVENTURE,
    .background = TO_FAR_PTR_T(bg_highway),
    .collisions = TO_FAR_PTR_T(scene_30_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_13),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 3,
    .n_triggers = 1,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_30_actors),
    .triggers = TO_FAR_PTR_T(scene_30_triggers),
    .sprites = TO_FAR_PTR_T(scene_30_sprites),
    .script_init = TO_FAR_PTR_T(scene_30_init),
    .script_p_hit1 = TO_FAR_PTR_T(scene_30_p_hit1)
};
