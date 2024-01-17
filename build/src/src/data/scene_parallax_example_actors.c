#pragma bank 255

// Scene: Parallax Example
// Actors

#include "gbs_types.h"
#include "data/sprite_elephant.h"
#include "data/actor_elephant_interact.h"
#include "data/sprite_woman_platform.h"
#include "data/actor_56_interact.h"

BANKREF(scene_parallax_example_actors)

const struct actor_t scene_parallax_example_actors[] = {
    {
        // Elephant,
        .pos = {
            .x = 528 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = -21,
            .bottom = 7,
            .right = 25,
            .top = -31
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_elephant),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_elephant_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 168 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_woman_platform),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_56_interact),
        .reserve_tiles = 0
    }
};
