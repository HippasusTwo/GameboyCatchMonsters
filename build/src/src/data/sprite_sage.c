#pragma bank 255
// SpriteSheet: sage

#include "gbs_types.h"
#include "data/sprite_sage_tileset.h"

BANKREF(sprite_sage)

#define SPRITE_24_STATE_DEFAULT 0
#define SPRITE_24_STATE_EXPLODE 0
#define SPRITE_24_STATE_OPEN 0

const metasprite_t sprite_sage_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_sage_metasprites[] = {
    sprite_sage_metasprite_0
};

const struct animation_t sprite_sage_animations[] = {
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

const UWORD sprite_sage_animations_lookup[] = {
    SPRITE_24_STATE_DEFAULT
};

const struct spritesheet_t sprite_sage = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_sage_metasprites,
    .animations = sprite_sage_animations,
    .animations_lookup = sprite_sage_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_sage_tileset),
    .cgb_tileset = { NULL, NULL }
};
