#pragma bank 255
// SpriteSheet: ungulate

#include "gbs_types.h"
#include "data/sprite_ungulate_tileset.h"


BANKREF(sprite_ungulate)

#define SPRITE_52_STATE_DEFAULT 0
#define SPRITE_52_STATE_EXPLODE 0
#define SPRITE_52_STATE_OPEN 0

const metasprite_t sprite_ungulate_metasprite_0[]  = {
    { 8, 23, 0, 5 }, { -16, 0, 2, 4 }, { 16, -8, 4, 4 }, { -16, 0, 6, 4 }, { 16, -8, 8, 4 }, { -16, 0, 10, 4 }, { 16, -8, 12, 4 },
    {metasprite_end}
};

const metasprite_t sprite_ungulate_metasprite_1[]  = {
    { 9, 23, 0, 5 }, { -16, 0, 2, 4 }, { 16, -8, 4, 4 }, { -16, 0, 6, 4 }, { 16, -8, 8, 4 }, { -16, 0, 10, 4 }, { 16, -8, 12, 4 },
    {metasprite_end}
};

const metasprite_t * const sprite_ungulate_metasprites[] = {
    sprite_ungulate_metasprite_0,
    sprite_ungulate_metasprite_1
};

const struct animation_t sprite_ungulate_animations[] = {
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

const UWORD sprite_ungulate_animations_lookup[] = {
    SPRITE_52_STATE_DEFAULT
};

const struct spritesheet_t sprite_ungulate = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_ungulate_metasprites,
    .animations = sprite_ungulate_animations,
    .animations_lookup = sprite_ungulate_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-24)
    },
    .tileset = TO_FAR_PTR_T(sprite_ungulate_tileset),
    .cgb_tileset = { NULL, NULL }
};
