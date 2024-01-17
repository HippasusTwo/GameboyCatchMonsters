#pragma bank 255
// SpriteSheet: ungulate

#include "gbs_types.h"
#include "data/sprite_ungulate_tileset.h"

BANKREF(sprite_ungulate)

#define SPRITE_13_STATE_DEFAULT 0
#define SPRITE_13_STATE_EXPLODE 0
#define SPRITE_13_STATE_OPEN 0

const metasprite_t sprite_ungulate_metasprite_0[]  = {
    { 0, 19, 0, 4 }, { -16, 0, 2, 4 }, { 16, -8, 4, 4 }, { -16, 0, 6, 4 }, { 16, -8, 8, 4 }, { -16, 0, 10, 4 }, { 16, -8, 12, 4 },
    {metasprite_end}
};

const metasprite_t sprite_ungulate_metasprite_1[]  = {
    { 1, 19, 0, 4 }, { -16, 0, 2, 4 }, { 16, -8, 4, 4 }, { -16, 0, 6, 4 }, { 16, -8, 8, 4 }, { -16, 0, 10, 4 }, { 16, -8, 12, 4 },
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
    SPRITE_13_STATE_DEFAULT
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
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -24
    },
    .tileset = TO_FAR_PTR_T(sprite_ungulate_tileset),
    .cgb_tileset = { NULL, NULL }
};
