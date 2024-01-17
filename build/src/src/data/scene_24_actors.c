#pragma bank 255

// Scene: Mart
// Actors

#include "gbs_types.h"
#include "data/sprite_ungulate.h"
#include "data/actor_51_interact.h"

BANKREF(scene_24_actors)

const struct actor_t scene_24_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 16 * 16,
            .y = 96 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -24
        },
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(sprite_ungulate),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_51_interact),
        .reserve_tiles = 0
    }
};
