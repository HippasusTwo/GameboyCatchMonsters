#pragma bank 255
// SpriteSheet: type2

#include "gbs_types.h"
#include "data/sprite_type2_tileset.h"


BANKREF(sprite_type2)

#define SPRITE_60_STATE_DEFAULT 0
#define SPRITE_60_STATE_EXPLODE 0
#define SPRITE_60_STATE_OPEN 0

const metasprite_t sprite_type2_metasprite_0[]  = {
    { 8, 22, 0, 5 }, { 0, -7, 2, 5 }, { 0, -8, 4, 5 }, { 0, -8, 6, 5 },
    {metasprite_end}
};

const metasprite_t sprite_type2_metasprite_1[]  = {
    { 7, 3, 8, 5 }, { 0, 19, 0, 5 }, { 0, -7, 2, 5 }, { 0, -8, 4, 5 }, { 0, -8, 6, 5 },
    {metasprite_end}
};

const metasprite_t * const sprite_type2_metasprites[] = {
    sprite_type2_metasprite_0,
    sprite_type2_metasprite_1
};

const struct animation_t sprite_type2_animations[] = {
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

const UWORD sprite_type2_animations_lookup[] = {
    SPRITE_60_STATE_DEFAULT
};

const struct spritesheet_t sprite_type2 = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_type2_metasprites,
    .animations = sprite_type2_animations,
    .animations_lookup = sprite_type2_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_type2_tileset),
    .cgb_tileset = { NULL, NULL }
};
