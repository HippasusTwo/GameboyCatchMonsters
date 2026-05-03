#pragma bank 255

// Scene: IndustryWorkyard
// Actors

#include "gbs_types.h"
#include "data/sprite_npc006.h"
#include "data/actor_52_interact.h"
#include "data/sprite_mouse.h"
#include "data/actor_53_update.h"
#include "data/actor_53_interact.h"

BANKREF(scene_25_actors)

const struct actor_t scene_25_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 2816,
            .y = 3584
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc006),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script = TO_FAR_PTR_T(actor_52_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 768,
            .y = 8704
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_mouse),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_NONE,
        .script_update = TO_FAR_PTR_T(actor_53_update),
        .script = TO_FAR_PTR_T(actor_53_interact),
        .reserve_tiles = 0
    }
};
