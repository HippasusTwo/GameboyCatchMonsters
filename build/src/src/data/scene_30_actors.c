#pragma bank 255

// Scene: Scene 30
// Actors

#include "gbs_types.h"
#include "data/sprite_pc_car.h"
#include "data/actor_71_interact.h"
#include "data/sprite_pc_car.h"
#include "data/actor_73_update.h"
#include "data/actor_73_interact.h"
#include "data/sprite_pc_car.h"
#include "data/actor_72_update.h"
#include "data/actor_72_interact.h"

BANKREF(scene_30_actors)

const struct actor_t scene_30_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 240 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_pc_car),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_71_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 144 * 16,
            .y = 152 * 16
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
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_73_update),
        .script = TO_FAR_PTR_T(actor_73_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 120 * 16,
            .y = 72 * 16
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
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_72_update),
        .script = TO_FAR_PTR_T(actor_72_interact),
        .reserve_tiles = 0
    }
};
