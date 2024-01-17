#pragma bank 255
// SpriteSheet: woman_platform

#include "gbs_types.h"
#include "data/sprite_woman_platform_tileset.h"

BANKREF(sprite_woman_platform)

#define SPRITE_43_STATE_DEFAULT 0
#define SPRITE_43_STATE_EXPLODE 0
#define SPRITE_43_STATE_OPEN 0

const metasprite_t sprite_woman_platform_metasprite_0[]  = {
    { 0, 7, 16, 0 }, { -16, 0, 18, 0 }, { 16, -8, 20, 0 }, { -16, 0, 22, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_2[]  = {
    { 0, 8, 8, 0 }, { -16, 0, 10, 0 }, { 16, -8, 12, 0 }, { -16, 0, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { -16, 0, 2, 32 }, { 16, 8, 4, 32 }, { -16, 0, 6, 32 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_4[]  = {
    { 0, 9, 40, 0 }, { -16, 0, 2, 0 }, { 16, -8, 42, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_5[]  = {
    { 0, 8, 24, 0 }, { -16, 0, 2, 0 }, { 16, -8, 26, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_6[]  = {
    { 0, 8, 28, 0 }, { -16, 0, 2, 0 }, { 16, -8, 30, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_7[]  = {
    { 0, 8, 32, 0 }, { -16, 0, 2, 0 }, { 16, -8, 34, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_8[]  = {
    { 0, 9, 36, 0 }, { -16, 0, 10, 0 }, { 16, -8, 38, 0 }, { -16, 0, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_9[]  = {
    { 0, 0, 24, 32 }, { -16, 0, 2, 32 }, { 16, 8, 26, 32 }, { -16, 0, 6, 32 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_10[]  = {
    { 0, 0, 28, 32 }, { -16, 0, 2, 32 }, { 16, 8, 30, 32 }, { -16, 0, 6, 32 },
    {metasprite_end}
};

const metasprite_t sprite_woman_platform_metasprite_11[]  = {
    { 0, 0, 32, 32 }, { -16, 0, 2, 32 }, { 16, 8, 34, 32 }, { -16, 0, 6, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_woman_platform_metasprites[] = {
    sprite_woman_platform_metasprite_0,
    sprite_woman_platform_metasprite_1,
    sprite_woman_platform_metasprite_2,
    sprite_woman_platform_metasprite_3,
    sprite_woman_platform_metasprite_4,
    sprite_woman_platform_metasprite_5,
    sprite_woman_platform_metasprite_6,
    sprite_woman_platform_metasprite_7,
    sprite_woman_platform_metasprite_2,
    sprite_woman_platform_metasprite_8,
    sprite_woman_platform_metasprite_9,
    sprite_woman_platform_metasprite_10,
    sprite_woman_platform_metasprite_11
};

const struct animation_t sprite_woman_platform_animations[] = {
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
        .end = 4
    },
    {
        .start = 5,
        .end = 7
    },
    {
        .start = 8,
        .end = 9
    },
    {
        .start = 10,
        .end = 12
    }
};

const UWORD sprite_woman_platform_animations_lookup[] = {
    SPRITE_43_STATE_DEFAULT
};

const struct spritesheet_t sprite_woman_platform = {
    .n_metasprites = 13,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_woman_platform_metasprites,
    .animations = sprite_woman_platform_animations,
    .animations_lookup = sprite_woman_platform_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_woman_platform_tileset),
    .cgb_tileset = { NULL, NULL }
};
