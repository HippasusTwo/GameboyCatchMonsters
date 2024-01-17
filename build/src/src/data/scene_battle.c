#pragma bank 255

// Scene: Battle

#include "gbs_types.h"
#include "data/bg_placeholder1.h"
#include "data/scene_battle_collisions.h"
#include "data/palette_11.h"
#include "data/palette_17.h"
#include "data/sprite_cursor.h"
#include "data/scene_battle_actors.h"
#include "data/scene_battle_triggers.h"
#include "data/scene_battle_sprites.h"
#include "data/scene_battle_init.h"

BANKREF(scene_battle)

const struct scene_t scene_battle = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_POINTNCLICK,
    .background = TO_FAR_PTR_T(bg_placeholder1),
    .collisions = TO_FAR_PTR_T(scene_battle_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_11),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_cursor),
    .n_actors = 4,
    .n_triggers = 4,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_battle_actors),
    .triggers = TO_FAR_PTR_T(scene_battle_triggers),
    .sprites = TO_FAR_PTR_T(scene_battle_sprites),
    .script_init = TO_FAR_PTR_T(scene_battle_init)
};
