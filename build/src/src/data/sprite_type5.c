#pragma bank 255
// SpriteSheet: type5

#include "gbs_types.h"
#include "data/sprite_type5_tileset.h"


BANKREF(sprite_type5)

#define SPRITE_63_STATE_DEFAULT 0
#define SPRITE_63_STATE_EXPLODE 0
#define SPRITE_63_STATE_OPEN 0

const metasprite_t sprite_type5_metasprite_0[]  = {
    { 8, 27, 0, 0 }, { 0, -7, 2, 0 }, { 0, -6, 4, 0 }, { 0, -8, 6, 0 }, { 0, -7, 8, 1 },
    {metasprite_end}
};

const metasprite_t sprite_type5_metasprite_1[]  = {
    { 8, 28, 0, 0 }, { 0, -7, 2, 0 }, { 0, -6, 4, 0 }, { 0, -8, 6, 0 }, { 0, -7, 8, 1 },
    {metasprite_end}
};

const metasprite_t * const sprite_type5_metasprites[] = {
    sprite_type5_metasprite_0,
    sprite_type5_metasprite_1
};

const struct animation_t sprite_type5_animations[] = {
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

const UWORD sprite_type5_animations_lookup[] = {
    SPRITE_63_STATE_DEFAULT
};

const struct spritesheet_t sprite_type5 = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_type5_metasprites,
    .animations = sprite_type5_animations,
    .animations_lookup = sprite_type5_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_type5_tileset),
    .cgb_tileset = { NULL, NULL }
};
