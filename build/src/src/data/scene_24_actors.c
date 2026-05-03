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
            .x = 512,
            .y = 3072
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-24)
        },
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(sprite_ungulate),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script = TO_FAR_PTR_T(actor_51_interact),
        .reserve_tiles = 0
    }
};
