#pragma bank 255
// SpriteSheet: type3

#include "gbs_types.h"
#include "data/sprite_typewater_tileset.h"


BANKREF(sprite_typewater)

#define SPRITE_61_STATE_DEFAULT 0
#define SPRITE_61_STATE_EXPLODE 0
#define SPRITE_61_STATE_OPEN 0

const metasprite_t sprite_typewater_metasprite_0[]  = {
    { 8, 23, 0, 0 }, { 0, -8, 2, 0 }, { 0, -8, 4, 0 }, { 0, -8, 6, 6 },
    {metasprite_end}
};

const metasprite_t sprite_typewater_metasprite_1[]  = {
    { 7, 23, 0, 0 }, { 0, -8, 2, 0 }, { 0, -8, 4, 0 }, { 0, -8, 6, 6 },
    {metasprite_end}
};

const metasprite_t * const sprite_typewater_metasprites[] = {
    sprite_typewater_metasprite_0,
    sprite_typewater_metasprite_1
};

const struct animation_t sprite_typewater_animations[] = {
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

const UWORD sprite_typewater_animations_lookup[] = {
    SPRITE_61_STATE_DEFAULT
};

const struct spritesheet_t sprite_typewater = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_typewater_metasprites,
    .animations = sprite_typewater_animations,
    .animations_lookup = sprite_typewater_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_typewater_tileset),
    .cgb_tileset = { NULL, NULL }
};
