#pragma bank 255

// Scene: HotelOutside
// Actors

#include "gbs_types.h"
#include "data/sprite_npc008.h"
#include "data/actor_58_interact.h"

BANKREF(scene_29_actors)

const struct actor_t scene_29_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 192 * 16,
            .y = 184 * 16
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
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_58_interact),
        .reserve_tiles = 0
    }
};
