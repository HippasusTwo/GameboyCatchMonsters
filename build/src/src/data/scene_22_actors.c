#pragma bank 255

// Scene: CityHall
// Actors

#include "gbs_types.h"
#include "data/sprite_baldguybymonkeyimage.h"
#include "data/actor_42_interact.h"
#include "data/sprite_chipmunk.h"
#include "data/actor_43_interact.h"
#include "data/sprite_npc007.h"
#include "data/actor_44_interact.h"
#include "data/sprite_player.h"
#include "data/actor_45_interact.h"
#include "data/sprite_duck.h"
#include "data/actor_46_interact.h"

BANKREF(scene_22_actors)

const struct actor_t scene_22_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 88 * 16,
            .y = 168 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_baldguybymonkeyimage),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_42_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 112 * 16,
            .y = 136 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_chipmunk),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_43_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 96 * 16,
            .y = 152 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_npc007),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_44_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 120 * 16,
            .y = 120 * 16
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
        .script = TO_FAR_PTR_T(actor_45_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 5,
        .pos = {
            .x = 72 * 16,
            .y = 176 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_duck),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_46_interact),
        .reserve_tiles = 0
    }
};
