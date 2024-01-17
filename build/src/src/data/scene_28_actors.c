#pragma bank 255

// Scene: Restaurant
// Actors

#include "gbs_types.h"
#include "data/sprite_npc001.h"
#include "data/actor_59_interact.h"
#include "data/sprite_ferret.h"
#include "data/actor_60_interact.h"
#include "data/sprite_pc_car.h"
#include "data/actor_61_update.h"
#include "data/sprite_hpbarfull.h"
#include "data/actor_62_interact.h"
#include "data/sprite_player.h"
#include "data/actor_63_interact.h"
#include "data/sprite_cat.h"
#include "data/actor_64_update.h"
#include "data/actor_64_interact.h"

BANKREF(scene_28_actors)

const struct actor_t scene_28_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 160 * 16,
            .y = 152 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_npc001),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_59_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 192 * 16,
            .y = 152 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_ferret),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_60_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 104 * 16,
            .y = 144 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_pc_car),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_61_update),
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 128 * 16,
            .y = 176 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_hpbarfull),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_62_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 5,
        .pos = {
            .x = 208 * 16,
            .y = 152 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = 0
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_player),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_63_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 6,
        .pos = {
            .x = 144 * 16,
            .y = 296 * 16
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
        .script_update = TO_FAR_PTR_T(actor_64_update),
        .script = TO_FAR_PTR_T(actor_64_interact),
        .reserve_tiles = 8
    }
};
