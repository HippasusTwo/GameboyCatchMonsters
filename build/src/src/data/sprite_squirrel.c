#pragma bank 255
// SpriteSheet: Squirrel

#include "gbs_types.h"
#include "data/sprite_squirrel_tileset.h"


BANKREF(sprite_squirrel)

#define SPRITE_8_STATE_DEFAULT 0
#define SPRITE_8_STATE_EXPLODE 0
#define SPRITE_8_STATE_OPEN 0

const metasprite_t sprite_squirrel_metasprite_0[]  = {
    { 8, 16, 0, 3 }, { 0, -8, 2, 3 },
    {metasprite_end}
};

const metasprite_t sprite_squirrel_metasprite_1[]  = {
    { 8, 16, 4, 3 }, { 0, -8, 6, 3 },
    {metasprite_end}
};

const metasprite_t * const sprite_squirrel_metasprites[] = {
    sprite_squirrel_metasprite_0,
    sprite_squirrel_metasprite_1
};

const struct animation_t sprite_squirrel_animations[] = {
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

const UWORD sprite_squirrel_animations_lookup[] = {
    SPRITE_8_STATE_DEFAULT
};

const struct spritesheet_t sprite_squirrel = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_squirrel_metasprites,
    .animations = sprite_squirrel_animations,
    .animations_lookup = sprite_squirrel_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_squirrel_tileset),
    .cgb_tileset = { NULL, NULL }
};
