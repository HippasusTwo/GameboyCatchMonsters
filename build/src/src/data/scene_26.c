#pragma bank 255

// Scene: Playground

#include "gbs_types.h"
#include "data/bg_overworld_playground_pix.h"
#include "data/scene_26_collisions.h"
#include "data/palette_15.h"
#include "data/palette_19.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_26_actors.h"
#include "data/scene_26_triggers.h"
#include "data/scene_26_sprites.h"
#include "data/scene_26_init.h"

BANKREF(scene_26)

const struct scene_t scene_26 = {
    .width = 40,
    .height = 40,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_overworld_playground_pix),
    .collisions = TO_FAR_PTR_T(scene_26_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0, 0, 0)
    },
    .scroll_bounds = {
        .left = 0,
        .top = 0,
        .right = 160,
        .bottom = 176
    },
    .palette = TO_FAR_PTR_T(palette_15),
    .sprite_palette = TO_FAR_PTR_T(palette_19),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 6,
    .n_triggers = 3,
    .n_sprites = 3,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_26_actors),
    .triggers = TO_FAR_PTR_T(scene_26_triggers),
    .sprites = TO_FAR_PTR_T(scene_26_sprites),
    .script_init = TO_FAR_PTR_T(scene_26_init)
};
