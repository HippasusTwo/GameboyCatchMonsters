#pragma bank 255

// Scene: HotelOutside
// Actors

#include "gbs_types.h"
#include "data/sprite_npc008.h"
#include "data/actor_58_interact.h"
#include "data/sprite_robot.h"
#include "data/actor_82_update.h"
#include "data/actor_82_interact.h"

BANKREF(scene_29_actors)

const struct actor_t scene_29_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 6144,
            .y = 5888
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc008),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script = TO_FAR_PTR_T(actor_58_interact),
        .reserve_tiles = 0
    },
    {
        // Critter,
        .pos = {
            .x = 0,
            .y = 9984
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_robot),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script_update = TO_FAR_PTR_T(actor_82_update),
        .script = TO_FAR_PTR_T(actor_82_interact),
        .reserve_tiles = 0
    }
};
