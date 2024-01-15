#pragma bank 255

// Scene: Path to Sample Town
// Actors

#include "gbs_types.h"
#include "data/sprite_turnip.h"
#include "data/actor_turnip_1_update.h"
#include "data/actor_turnip_1_interact.h"
#include "data/sprite_npc_gardener.h"
#include "data/actor_gardener_interact.h"
#include "data/sprite_turnip.h"
#include "data/actor_turnip_2_update.h"
#include "data/actor_turnip_2_interact.h"
#include "data/sprite_turnip.h"
#include "data/actor_turnip_3_update.h"
#include "data/actor_turnip_3_interact.h"
#include "data/sprite_signpost.h"
#include "data/actor_sign_post_4_interact.h"
#include "data/sprite_savepoint.h"
#include "data/actor_save_point_0_interact.h"

BANKREF(scene_path_to_sample_town_actors)

const struct actor_t scene_path_to_sample_town_actors[] = {
    {
        // Turnip 1,
        .pos = {
            .x = 576 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_turnip),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_turnip_1_update),
        .script = TO_FAR_PTR_T(actor_turnip_1_interact),
        .reserve_tiles = 0
    },
    {
        // Gardener,
        .pos = {
            .x = 360 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(sprite_npc_gardener),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_gardener_interact),
        .reserve_tiles = 0
    },
    {
        // Turnip 2,
        .pos = {
            .x = 760 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_turnip),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_turnip_2_update),
        .script = TO_FAR_PTR_T(actor_turnip_2_interact),
        .reserve_tiles = 0
    },
    {
        // Turnip 3,
        .pos = {
            .x = 824 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_turnip),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_turnip_3_update),
        .script = TO_FAR_PTR_T(actor_turnip_3_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post,
        .pos = {
            .x = 1072 * 16,
            .y = 104 * 16
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
        .script = TO_FAR_PTR_T(actor_sign_post_4_interact),
        .reserve_tiles = 0
    },
    {
        // Save Point,
        .pos = {
            .x = 936 * 16,
            .y = 104 * 16
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
        .anim_tick = 31,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_save_point_0_interact),
        .reserve_tiles = 0
    }
};
