#pragma bank 255

// Scene: IndustryWorkyard
// Actors

#include "gbs_types.h"
#include "data/sprite_npc006.h"
#include "data/actor_52_interact.h"
#include "data/sprite_mouse.h"
#include "data/actor_53_update.h"
#include "data/actor_53_interact.h"

BANKREF(scene_25_actors)

const struct actor_t scene_25_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 88 * 16,
            .y = 112 * 16
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
        .script = TO_FAR_PTR_T(actor_52_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 24 * 16,
            .y = 272 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_mouse),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_53_update),
        .script = TO_FAR_PTR_T(actor_53_interact),
        .reserve_tiles = 0
    }
};
