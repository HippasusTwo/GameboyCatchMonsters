#pragma bank 255
// SpriteSheet: type6

#include "gbs_types.h"
#include "data/sprite_type6_tileset.h"


BANKREF(sprite_type6)

#define SPRITE_64_STATE_DEFAULT 0
#define SPRITE_64_STATE_EXPLODE 0
#define SPRITE_64_STATE_OPEN 0

const metasprite_t sprite_type6_metasprite_0[]  = {
    { 8, 32, 0, 3 }, { 0, -8, 2, 3 }, { 0, -8, 4, 3 }, { 0, -8, 6, 3 }, { -2, -9, 8, 5 },
    {metasprite_end}
};

const metasprite_t sprite_type6_metasprite_1[]  = {
    { 7, 30, 0, 5 }, { 0, -8, 2, 5 }, { 0, -8, 4, 5 }, { 0, -8, 6, 5 }, { 0, -8, 8, 5 },
    {metasprite_end}
};

const metasprite_t * const sprite_type6_metasprites[] = {
    sprite_type6_metasprite_0,
    sprite_type6_metasprite_1
};

const struct animation_t sprite_type6_animations[] = {
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    }
};

const UWORD sprite_type6_animations_lookup[] = {
    SPRITE_64_STATE_DEFAULT
};

const struct spritesheet_t sprite_type6 = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_type6_metasprites,
    .animations = sprite_type6_animations,
    .animations_lookup = sprite_type6_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_type6_tileset),
    .cgb_tileset = { NULL, NULL }
};
