#pragma bank 255

// Scene: CopOuter
// Actors

#include "gbs_types.h"
#include "data/sprite_hedgehog.h"
#include "data/actor_40_interact.h"
#include "data/sprite_frog.h"
#include "data/actor_41_interact.h"

BANKREF(scene_20_actors)

const struct actor_t scene_20_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 6144,
            .y = 6400
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_hedgehog),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script = TO_FAR_PTR_T(actor_40_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 5632,
            .y = 6144
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_frog),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script = TO_FAR_PTR_T(actor_41_interact),
        .reserve_tiles = 0
    }
};
