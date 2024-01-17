#pragma bank 255

// Scene: Mart Town
// Actors

#include "gbs_types.h"
#include "data/sprite_savepoint.h"
#include "data/actor_33_interact.h"
#include "data/sprite_baldguybymonkeyimage.h"
#include "data/actor_37_interact.h"
#include "data/sprite_guybymonkeyimage.h"
#include "data/actor_38_interact.h"
#include "data/sprite_mouse.h"
#include "data/actor_39_update.h"
#include "data/actor_39_interact.h"
#include "data/sprite_cat.h"
#include "data/actor_57_update.h"
#include "data/actor_57_interact.h"

BANKREF(scene_21_actors)

const struct actor_t scene_21_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 528 * 16,
            .y = 144 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_savepoint),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_33_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 408 * 16,
            .y = 144 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_baldguybymonkeyimage),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_37_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 248 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_guybymonkeyimage),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_38_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 576 * 16,
            .y = 304 * 16
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
        .script_update = TO_FAR_PTR_T(actor_39_update),
        .script = TO_FAR_PTR_T(actor_39_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 5,
        .pos = {
            .x = 552 * 16,
            .y = 152 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_cat),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_57_update),
        .script = TO_FAR_PTR_T(actor_57_interact),
        .reserve_tiles = 8
    }
};
