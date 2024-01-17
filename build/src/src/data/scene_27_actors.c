#pragma bank 255

// Scene: Outdoors
// Actors

#include "gbs_types.h"
#include "data/sprite_npc002.h"
#include "data/actor_55_interact.h"
#include "data/sprite_rock.h"
#include "data/actor_65_interact.h"

BANKREF(scene_27_actors)

const struct actor_t scene_27_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 88 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc002),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_55_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 192 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_rock),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_65_interact),
        .reserve_tiles = 0
    }
};
