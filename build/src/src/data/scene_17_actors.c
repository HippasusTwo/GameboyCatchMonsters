#pragma bank 255

// Scene: Music House
// Actors

#include "gbs_types.h"
#include "data/sprite_keyboard.h"
#include "data/actor_18_interact.h"
#include "data/sprite_drumkit.h"
#include "data/actor_19_interact.h"
#include "data/sprite_npc008.h"
#include "data/actor_20_update.h"
#include "data/actor_20_interact.h"
#include "data/sprite_machine.h"
#include "data/actor_21_interact.h"
#include "data/sprite_machine.h"
#include "data/actor_22_interact.h"
#include "data/sprite_machine.h"
#include "data/actor_23_interact.h"
#include "data/sprite_machine.h"
#include "data/actor_24_interact.h"
#include "data/sprite_signpost.h"
#include "data/actor_25_interact.h"
#include "data/sprite_signpost.h"
#include "data/actor_26_interact.h"

BANKREF(scene_17_actors)

const struct actor_t scene_17_actors[] = {
    {
        // Keyboard,
        .pos = {
            .x = 40 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = -8,
            .bottom = 7,
            .right = 23,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_keyboard),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_18_interact),
        .reserve_tiles = 0
    },
    {
        // Drumkit,
        .pos = {
            .x = 104 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = -8,
            .bottom = 7,
            .right = 23,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_drumkit),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_19_interact),
        .reserve_tiles = 0
    },
    {
        // DJ,
        .pos = {
            .x = 120 * 16,
            .y = 88 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc008),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_20_update),
        .script = TO_FAR_PTR_T(actor_20_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 24 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_21_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 56 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_22_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 88 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_23_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 120 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_24_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post 2,
        .pos = {
            .x = 16 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_signpost),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_25_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post 2,
        .pos = {
            .x = 128 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_signpost),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_26_interact),
        .reserve_tiles = 0
    }
};
