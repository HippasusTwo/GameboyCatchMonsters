#pragma bank 255
// SpriteSheet: type1

#include "gbs_types.h"
#include "data/sprite_typewood_tileset.h"


BANKREF(sprite_typewood)

#define SPRITE_59_STATE_DEFAULT 0
#define SPRITE_59_STATE_EXPLODE 0
#define SPRITE_59_STATE_OPEN 0

const metasprite_t sprite_typewood_metasprite_0[]  = {
    { 8, 29, 0, 0 }, { 0, -8, 2, 0 }, { 0, -7, 4, 0 }, { 0, -6, 6, 0 }, { 0, -8, 8, 2 },
    {metasprite_end}
};

const metasprite_t * const sprite_typewood_metasprites[] = {
    sprite_typewood_metasprite_0
};

const struct animation_t sprite_typewood_animations[] = {
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

const UWORD sprite_typewood_animations_lookup[] = {
    SPRITE_59_STATE_DEFAULT
};

const struct spritesheet_t sprite_typewood = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_typewood_metasprites,
    .animations = sprite_typewood_animations,
    .animations_lookup = sprite_typewood_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_typewood_tileset),
    .cgb_tileset = { NULL, NULL }
};
