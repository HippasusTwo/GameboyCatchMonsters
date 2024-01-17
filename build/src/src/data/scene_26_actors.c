#pragma bank 255

// Scene: Playground
// Actors

#include "gbs_types.h"
#include "data/sprite_mouse.h"
#include "data/actor_54_update.h"
#include "data/actor_54_interact.h"
#include "data/sprite_npc004.h"
#include "data/actor_66_interact.h"
#include "data/sprite_npc004.h"
#include "data/actor_67_interact.h"
#include "data/sprite_rock.h"
#include "data/actor_68_interact.h"
#include "data/sprite_rock.h"
#include "data/actor_69_interact.h"
#include "data/sprite_rock.h"
#include "data/actor_70_interact.h"

BANKREF(scene_26_actors)

const struct actor_t scene_26_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 48 * 16,
            .y = 40 * 16
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
        .script_update = TO_FAR_PTR_T(actor_54_update),
        .script = TO_FAR_PTR_T(actor_54_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 112 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(sprite_npc004),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_66_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 184 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_npc004),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_67_interact),
        .reserve_tiles = 0
    },
    {
        // Rock 2,
        .pos = {
            .x = 48 * 16,
            .y = 256 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_rock),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_68_interact),
        .reserve_tiles = 0
    },
    {
        // Rock 2,
        .pos = {
            .x = 88 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_rock),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_69_interact),
        .reserve_tiles = 0
    },
    {
        // Rock 2,
        .pos = {
            .x = 64 * 16,
            .y = 32 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_rock),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_70_interact),
        .reserve_tiles = 0
    }
};
