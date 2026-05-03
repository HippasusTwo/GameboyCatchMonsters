#pragma bank 255
// SpriteSheet: Hedgehog

#include "gbs_types.h"
#include "data/sprite_hedgehog_tileset.h"


BANKREF(sprite_hedgehog)

#define SPRITE_14_STATE_DEFAULT 0
#define SPRITE_14_STATE_EXPLODE 0
#define SPRITE_14_STATE_OPEN 0

const metasprite_t sprite_hedgehog_metasprite_0[]  = {
    { 8, 16, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_hedgehog_metasprite_1[]  = {
    { 8, 16, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_hedgehog_metasprites[] = {
    sprite_hedgehog_metasprite_0,
    sprite_hedgehog_metasprite_1
};

const struct animation_t sprite_hedgehog_animations[] = {
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

const UWORD sprite_hedgehog_animations_lookup[] = {
    SPRITE_14_STATE_DEFAULT
};

const struct spritesheet_t sprite_hedgehog = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_hedgehog_metasprites,
    .animations = sprite_hedgehog_animations,
    .animations_lookup = sprite_hedgehog_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_hedgehog_tileset),
    .cgb_tileset = { NULL, NULL }
};
