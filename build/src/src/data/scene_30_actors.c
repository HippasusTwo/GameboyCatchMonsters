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
#include "data/sprite_mantis.h"
#include "data/actor_83_update.h"
#include "data/actor_83_interact.h"

BANKREF(scene_30_actors)

const struct actor_t scene_30_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 7680,
            .y = 3840
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_pc_car),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script = TO_FAR_PTR_T(actor_71_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 4608,
            .y = 4864
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_pc_car),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION | ACTOR_FLAG_PERSISTENT,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_73_update),
        .script = TO_FAR_PTR_T(actor_73_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 3840,
            .y = 2304
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_pc_car),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION | ACTOR_FLAG_PERSISTENT,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_72_update),
        .script = TO_FAR_PTR_T(actor_72_interact),
        .reserve_tiles = 0
    },
    {
        // Critter,
        .pos = {
            .x = 1280,
            .y = 7936
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_mantis),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script_update = TO_FAR_PTR_T(actor_83_update),
        .script = TO_FAR_PTR_T(actor_83_interact),
        .reserve_tiles = 0
    }
};
