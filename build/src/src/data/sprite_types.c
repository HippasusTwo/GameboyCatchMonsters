#pragma bank 255
// SpriteSheet: types

#include "gbs_types.h"
#include "data/sprite_types_tileset.h"


BANKREF(sprite_types)

#define SPRITE_41_STATE_DEFAULT 0
#define SPRITE_41_STATE_EXPLODE 0
#define SPRITE_41_STATE_OPEN 0

const metasprite_t sprite_types_metasprite_0[]  = {
    { 8, 26, 0, 0 }, { 0, -8, 2, 0 }, { 0, -8, 4, 0 }, { 0, -8, 6, 0 }, { 0, -2, 8, 4 },
    {metasprite_end}
};

const metasprite_t * const sprite_types_metasprites[] = {
    sprite_types_metasprite_0
};

const struct animation_t sprite_types_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    }
};

const UWORD sprite_types_animations_lookup[] = {
    SPRITE_41_STATE_DEFAULT
};

const struct spritesheet_t sprite_types = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_types_metasprites,
    .animations = sprite_types_animations,
    .animations_lookup = sprite_types_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_types_tileset),
    .cgb_tileset = { NULL, NULL }
};
