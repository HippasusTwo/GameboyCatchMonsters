#pragma bank 255
// SpriteSheet: robot

#include "gbs_types.h"
#include "data/sprite_robot_tileset.h"


BANKREF(sprite_robot)

#define SPRITE_55_STATE_DEFAULT 0
#define SPRITE_55_STATE_EXPLODE 0
#define SPRITE_55_STATE_OPEN 0

const metasprite_t sprite_robot_metasprite_0[]  = {
    { 8, 16, 8, 1 }, { 0, -8, 10, 1 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_1[]  = {
    { 8, 16, 0, 1 }, { 0, -8, 2, 1 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_2[]  = {
    { 8, 16, 4, 1 }, { 0, -8, 6, 1 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_3[]  = {
    { 8, 8, 0, 33 }, { 0, 8, 2, 33 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_4[]  = {
    { 8, 16, 20, 1 }, { 0, -8, 22, 1 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_5[]  = {
    { 8, 16, 12, 1 }, { 0, -8, 14, 1 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_6[]  = {
    { 8, 16, 16, 1 }, { 0, -8, 18, 1 },
    {metasprite_end}
};

const metasprite_t sprite_robot_metasprite_7[]  = {
    { 8, 8, 12, 33 }, { 0, 8, 14, 33 },
    {metasprite_end}
};

const metasprite_t * const sprite_robot_metasprites[] = {
    sprite_robot_metasprite_0,
    sprite_robot_metasprite_1,
    sprite_robot_metasprite_2,
    sprite_robot_metasprite_3,
    sprite_robot_metasprite_4,
    sprite_robot_metasprite_0,
    sprite_robot_metasprite_5,
    sprite_robot_metasprite_1,
    sprite_robot_metasprite_6,
    sprite_robot_metasprite_2,
    sprite_robot_metasprite_7,
    sprite_robot_metasprite_3
};

const struct animation_t sprite_robot_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 3,
        .end = 3
    },
    {
        .start = 4,
        .end = 5
    },
    {
        .start = 6,
        .end = 7
    },
    {
        .start = 8,
        .end = 9
    },
    {
        .start = 10,
        .end = 11
    }
};

const UWORD sprite_robot_animations_lookup[] = {
    SPRITE_55_STATE_DEFAULT
};

const struct spritesheet_t sprite_robot = {
    .n_metasprites = 12,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_robot_metasprites,
    .animations = sprite_robot_animations,
    .animations_lookup = sprite_robot_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_robot_tileset),
    .cgb_tileset = { NULL, NULL }
};
