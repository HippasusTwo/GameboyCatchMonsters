#pragma bank 255

// Scene: Space Battle
// Actors

#include "gbs_types.h"
#include "data/sprite_ui_weapon.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_3_update.h"
#include "data/actor_3_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_4_update.h"
#include "data/actor_4_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_5_update.h"
#include "data/actor_5_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_6_update.h"
#include "data/actor_6_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_7_update.h"
#include "data/actor_7_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_8_update.h"
#include "data/actor_8_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_9_update.h"
#include "data/actor_9_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_10_update.h"
#include "data/actor_10_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_11_update.h"
#include "data/actor_11_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_12_update.h"
#include "data/actor_12_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_13_update.h"
#include "data/actor_13_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_14_update.h"
#include "data/actor_14_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_15_update.h"
#include "data/actor_15_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_16_update.h"
#include "data/actor_16_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_17_update.h"
#include "data/actor_17_interact.h"

BANKREF(scene_space_battle_actors)

const struct actor_t scene_space_battle_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 0,
            .y = 256
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_ui_weapon),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_PINNED,
        .collision_group = COLLISION_GROUP_NONE,
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 9216,
            .y = 2304
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_3_update),
        .script = TO_FAR_PTR_T(actor_3_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 17152,
            .y = 3584
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_4_update),
        .script = TO_FAR_PTR_T(actor_4_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 19456,
            .y = 1024
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_5_update),
        .script = TO_FAR_PTR_T(actor_5_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 5,
        .pos = {
            .x = 22016,
            .y = 3584
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_6_update),
        .script = TO_FAR_PTR_T(actor_6_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 6,
        .pos = {
            .x = 58368,
            .y = 768
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_7_update),
        .script = TO_FAR_PTR_T(actor_7_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 7,
        .pos = {
            .x = 55808,
            .y = 2304
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_8_update),
        .script = TO_FAR_PTR_T(actor_8_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 8,
        .pos = {
            .x = 58624,
            .y = 3840
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_9_update),
        .script = TO_FAR_PTR_T(actor_9_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 9,
        .pos = {
            .x = 28416,
            .y = 2304
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_10_update),
        .script = TO_FAR_PTR_T(actor_10_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 10,
        .pos = {
            .x = 33280,
            .y = 768
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_11_update),
        .script = TO_FAR_PTR_T(actor_11_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 11,
        .pos = {
            .x = 42240,
            .y = 3840
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_12_update),
        .script = TO_FAR_PTR_T(actor_12_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 12,
        .pos = {
            .x = 35840,
            .y = 768
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_13_update),
        .script = TO_FAR_PTR_T(actor_13_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 13,
        .pos = {
            .x = 38400,
            .y = 768
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_14_update),
        .script = TO_FAR_PTR_T(actor_14_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 14,
        .pos = {
            .x = 44800,
            .y = 3840
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_15_update),
        .script = TO_FAR_PTR_T(actor_15_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 15,
        .pos = {
            .x = 47360,
            .y = 3840
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_16_update),
        .script = TO_FAR_PTR_T(actor_16_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 16,
        .pos = {
            .x = 52736,
            .y = 2304
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(8) - 1,
            .right = PX_TO_SUBPX(16) - 1,
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 32,
        .anim_tick = 15,
        .flags = ACTOR_FLAG_COLLISION,
        .collision_group = COLLISION_GROUP_1,
        .script_update = TO_FAR_PTR_T(actor_17_update),
        .script = TO_FAR_PTR_T(actor_17_interact),
        .reserve_tiles = 0
    }
};
