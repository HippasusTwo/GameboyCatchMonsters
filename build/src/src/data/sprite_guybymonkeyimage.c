#pragma bank 255
// SpriteSheet: guybymonkeyimage

#include "gbs_types.h"
#include "data/sprite_guybymonkeyimage_tileset.h"

BANKREF(sprite_guybymonkeyimage)

#define SPRITE_49_STATE_DEFAULT 0
#define SPRITE_49_STATE_EXPLODE 0
#define SPRITE_49_STATE_OPEN 0

const metasprite_t sprite_guybymonkeyimage_metasprite_0[]  = {
    { 0, 7, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_2[]  = {
    { 0, 7, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_4[]  = {
    { 0, 8, 28, 0 }, { 0, -8, 30, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_5[]  = {
    { 0, 8, 32, 0 }, { 0, -8, 34, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_6[]  = {
    { 0, 8, 12, 0 }, { 0, -8, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_7[]  = {
    { 0, 8, 16, 0 }, { 0, -8, 18, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_8[]  = {
    { 0, 8, 20, 0 }, { 0, -8, 22, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_9[]  = {
    { 0, 8, 24, 0 }, { 0, -8, 26, 0 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_10[]  = {
    { 0, 0, 12, 32 }, { 0, 8, 14, 32 },
    {metasprite_end}
};

const metasprite_t sprite_guybymonkeyimage_metasprite_11[]  = {
    { 0, 0, 16, 32 }, { 0, 8, 18, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_guybymonkeyimage_metasprites[] = {
    sprite_guybymonkeyimage_metasprite_0,
    sprite_guybymonkeyimage_metasprite_1,
    sprite_guybymonkeyimage_metasprite_2,
    sprite_guybymonkeyimage_metasprite_3,
    sprite_guybymonkeyimage_metasprite_4,
    sprite_guybymonkeyimage_metasprite_5,
    sprite_guybymonkeyimage_metasprite_6,
    sprite_guybymonkeyimage_metasprite_7,
    sprite_guybymonkeyimage_metasprite_8,
    sprite_guybymonkeyimage_metasprite_9,
    sprite_guybymonkeyimage_metasprite_10,
    sprite_guybymonkeyimage_metasprite_11
};

const struct animation_t sprite_guybymonkeyimage_animations[] = {
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

const UWORD sprite_guybymonkeyimage_animations_lookup[] = {
    SPRITE_49_STATE_DEFAULT
};

const struct spritesheet_t sprite_guybymonkeyimage = {
    .n_metasprites = 12,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_guybymonkeyimage_metasprites,
    .animations = sprite_guybymonkeyimage_animations,
    .animations_lookup = sprite_guybymonkeyimage_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_guybymonkeyimage_tileset),
    .cgb_tileset = { NULL, NULL }
};
