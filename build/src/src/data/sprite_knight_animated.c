#pragma bank 255
// SpriteSheet: Knight_animated

#include "gbs_types.h"
#include "data/sprite_knight_animated_tileset.h"


BANKREF(sprite_knight_animated)

#define SPRITE_48_STATE_DEFAULT 0
#define SPRITE_48_STATE_EXPLODE 0
#define SPRITE_48_STATE_OPEN 0

const metasprite_t sprite_knight_animated_metasprite_0[]  = {
    { 9, 16, 12, 1 }, { 0, -8, 14, 1 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_1[]  = {
    { 8, 16, 16, 1 }, { 0, -8, 18, 1 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_2[]  = {
    { 8, 16, 0, 1 }, { 0, -8, 2, 1 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_3[]  = {
    { 8, 16, 4, 1 }, { 0, -8, 6, 1 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_4[]  = {
    { 8, 16, 8, 1 }, { 0, -8, 10, 1 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_5[]  = {
    { 8, 8, 0, 33 }, { 0, 8, 2, 33 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_6[]  = {
    { 8, 8, 4, 33 }, { 0, 8, 6, 33 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_7[]  = {
    { 8, 16, 12, 1 }, { 0, -8, 14, 1 },
    {metasprite_end}
};

const metasprite_t sprite_knight_animated_metasprite_8[]  = {
    { 8, 16, 20, 1 }, { 0, -8, 22, 1 },
    {metasprite_end}
};

const metasprite_t * const sprite_knight_animated_metasprites[] = {
    sprite_knight_animated_metasprite_0,
    sprite_knight_animated_metasprite_1,
    sprite_knight_animated_metasprite_2,
    sprite_knight_animated_metasprite_3,
    sprite_knight_animated_metasprite_4,
    sprite_knight_animated_metasprite_5,
    sprite_knight_animated_metasprite_6,
    sprite_knight_animated_metasprite_1,
    sprite_knight_animated_metasprite_7,
    sprite_knight_animated_metasprite_3,
    sprite_knight_animated_metasprite_2,
    sprite_knight_animated_metasprite_8,
    sprite_knight_animated_metasprite_4,
    sprite_knight_animated_metasprite_6,
    sprite_knight_animated_metasprite_5
};

const struct animation_t sprite_knight_animated_animations[] = {
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 2,
        .end = 3
    },
    {
        .start = 4,
        .end = 4
    },
    {
        .start = 5,
        .end = 6
    },
    {
        .start = 7,
        .end = 8
    },
    {
        .start = 9,
        .end = 10
    },
    {
        .start = 11,
        .end = 12
    },
    {
        .start = 13,
        .end = 14
    }
};

const UWORD sprite_knight_animated_animations_lookup[] = {
    SPRITE_48_STATE_DEFAULT
};

const struct spritesheet_t sprite_knight_animated = {
    .n_metasprites = 15,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_knight_animated_metasprites,
    .animations = sprite_knight_animated_animations,
    .animations_lookup = sprite_knight_animated_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_knight_animated_tileset),
    .cgb_tileset = { NULL, NULL }
};
