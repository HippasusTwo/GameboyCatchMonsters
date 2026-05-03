#pragma bank 255
// SpriteSheet: type4

#include "gbs_types.h"
#include "data/sprite_type4_tileset.h"


BANKREF(sprite_type4)

#define SPRITE_62_STATE_DEFAULT 0
#define SPRITE_62_STATE_EXPLODE 0
#define SPRITE_62_STATE_OPEN 0

const metasprite_t sprite_type4_metasprite_0[]  = {
    { 7, 21, 0, 0 }, { 0, -7, 2, 0 }, { 0, -7, 4, 0 }, { 0, -7, 6, 3 },
    {metasprite_end}
};

const metasprite_t sprite_type4_metasprite_1[]  = {
    { 8, -1, 8, 3 }, { 0, 22, 0, 0 }, { 0, -7, 2, 0 }, { 0, -7, 4, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_type4_metasprites[] = {
    sprite_type4_metasprite_0,
    sprite_type4_metasprite_1
};

const struct animation_t sprite_type4_animations[] = {
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

const UWORD sprite_type4_animations_lookup[] = {
    SPRITE_62_STATE_DEFAULT
};

const struct spritesheet_t sprite_type4 = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_type4_metasprites,
    .animations = sprite_type4_animations,
    .animations_lookup = sprite_type4_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_type4_tileset),
    .cgb_tileset = { NULL, NULL }
};
