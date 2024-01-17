#pragma bank 255
// SpriteSheet: player

#include "gbs_types.h"
#include "data/sprite_blackplayer_tileset.h"

BANKREF(sprite_blackplayer)

#define SPRITE_16_STATE_DEFAULT 0
#define SPRITE_16_STATE_EXPLODE 0
#define SPRITE_16_STATE_OPEN 0

const metasprite_t sprite_blackplayer_metasprite_0[]  = {
    { 0, 8, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_2[]  = {
    { 0, 7, 4, 0 }, { 0, -8, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_4[]  = {
    { 0, 8, 22, 0 }, { 0, -8, 24, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_5[]  = {
    { 0, 8, 26, 0 }, { 0, -8, 28, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_6[]  = {
    { 0, 8, 10, 0 }, { 0, -8, 12, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_7[]  = {
    { 0, 8, 14, 0 }, { 0, -8, 16, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_8[]  = {
    { 0, 8, 18, 0 }, { 0, -8, 20, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_9[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_10[]  = {
    { 0, 8, 20, 32 }, { 0, -8, 18, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_11[]  = {
    { 0, 0, 10, 32 }, { 0, 8, 12, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_12[]  = {
    { 0, 0, 14, 32 }, { 0, 8, 16, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_blackplayer_metasprites[] = {
    sprite_blackplayer_metasprite_0,
    sprite_blackplayer_metasprite_1,
    sprite_blackplayer_metasprite_2,
    sprite_blackplayer_metasprite_3,
    sprite_blackplayer_metasprite_4,
    sprite_blackplayer_metasprite_5,
    sprite_blackplayer_metasprite_6,
    sprite_blackplayer_metasprite_1,
    sprite_blackplayer_metasprite_7,
    sprite_blackplayer_metasprite_8,
    sprite_blackplayer_metasprite_9,
    sprite_blackplayer_metasprite_10,
    sprite_blackplayer_metasprite_11,
    sprite_blackplayer_metasprite_3,
    sprite_blackplayer_metasprite_12
};

const struct animation_t sprite_blackplayer_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 3,
        .end = 3
    },
    {
        .start = 4,
        .end = 5
    },
    {
        .start = 6,
        .end = 8
    },
    {
        .start = 9,
        .end = 11
    },
    {
        .start = 12,
        .end = 14
    }
};

const UWORD sprite_blackplayer_animations_lookup[] = {
    SPRITE_16_STATE_DEFAULT
};

const struct spritesheet_t sprite_blackplayer = {
    .n_metasprites = 15,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_blackplayer_metasprites,
    .animations = sprite_blackplayer_animations,
    .animations_lookup = sprite_blackplayer_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 13,
        .top = 0
    },
    .tileset = TO_FAR_PTR_T(sprite_blackplayer_tileset),
    .cgb_tileset = { NULL, NULL }
};
