#pragma bank 255
// SpriteSheet: pc_car

#include "gbs_types.h"
#include "data/sprite_pc_car_tileset.h"

BANKREF(sprite_pc_car)

#define SPRITE_52_STATE_DEFAULT 0
#define SPRITE_52_STATE_EXPLODE 0
#define SPRITE_52_STATE_OPEN 0

const metasprite_t sprite_pc_car_metasprite_0[]  = {
    { 0, 8, 6, 96 }, { 0, -8, 4, 96 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_2[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_4[]  = {
    { 0, 8, 14, 96 }, { 0, -8, 12, 96 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_5[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_6[]  = {
    { 0, 8, 12, 0 }, { 0, -8, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_pc_car_metasprite_7[]  = {
    { 0, 0, 8, 32 }, { 0, 8, 10, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_pc_car_metasprites[] = {
    sprite_pc_car_metasprite_0,
    sprite_pc_car_metasprite_1,
    sprite_pc_car_metasprite_2,
    sprite_pc_car_metasprite_3,
    sprite_pc_car_metasprite_4,
    sprite_pc_car_metasprite_0,
    sprite_pc_car_metasprite_5,
    sprite_pc_car_metasprite_1,
    sprite_pc_car_metasprite_6,
    sprite_pc_car_metasprite_2,
    sprite_pc_car_metasprite_7,
    sprite_pc_car_metasprite_3
};

const struct animation_t sprite_pc_car_animations[] = {
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

const UWORD sprite_pc_car_animations_lookup[] = {
    SPRITE_52_STATE_DEFAULT
};

const struct spritesheet_t sprite_pc_car = {
    .n_metasprites = 12,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_pc_car_metasprites,
    .animations = sprite_pc_car_animations,
    .animations_lookup = sprite_pc_car_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_pc_car_tileset),
    .cgb_tileset = { NULL, NULL }
};
