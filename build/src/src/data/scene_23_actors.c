#pragma bank 255

// Scene: CopStation
// Actors

#include "gbs_types.h"
#include "data/sprite_npc006.h"
#include "data/actor_47_interact.h"
#include "data/sprite_player.h"
#include "data/actor_74_interact.h"

BANKREF(scene_23_actors)

const struct actor_t scene_23_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 72 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc006),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_47_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 40 * 16,
            .y = 48 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = 0
        },
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(sprite_player),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_74_interact),
        .reserve_tiles = 0
    }
};
