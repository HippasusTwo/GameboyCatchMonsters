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
            .x = 192 * 16,
            .y = 192 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_hedgehog),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_40_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 176 * 16,
            .y = 184 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_frog),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_41_interact),
        .reserve_tiles = 0
    }
};
