#pragma bank 255
// SpriteSheet: player

#include "gbs_types.h"
#include "data/sprite_blackplayer_tileset.h"


BANKREF(sprite_blackplayer)

#define SPRITE_0_STATE_DEFAULT 0
#define SPRITE_0_STATE_EXPLODE 0
#define SPRITE_0_STATE_OPEN 0

const metasprite_t sprite_blackplayer_metasprite_0[]  = {
    { 8, 16, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_1[]  = {
    { 8, 16, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_2[]  = {
    { 8, 15, 4, 0 }, { 0, -8, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_3[]  = {
    { 8, 8, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_4[]  = {
    { 8, 16, 22, 0 }, { 0, -8, 24, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_5[]  = {
    { 8, 16, 26, 0 }, { 0, -8, 28, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_6[]  = {
    { 8, 16, 10, 0 }, { 0, -8, 12, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_7[]  = {
    { 8, 16, 14, 0 }, { 0, -8, 16, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_8[]  = {
    { 8, 16, 18, 0 }, { 0, -8, 20, 0 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_9[]  = {
    { 8, 16, 4, 0 }, { 0, -8, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_10[]  = {
    { 8, 16, 20, 32 }, { 0, -8, 18, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_11[]  = {
    { 8, 8, 10, 32 }, { 0, 8, 12, 32 },
    {metasprite_end}
};

const metasprite_t sprite_blackplayer_metasprite_12[]  = {
    { 8, 8, 14, 32 }, { 0, 8, 16, 32 },
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
    SPRITE_0_STATE_DEFAULT
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
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(14) - 1,
        .top = PX_TO_SUBPX(0)
    },
    .tileset = TO_FAR_PTR_T(sprite_blackplayer_tileset),
    .cgb_tileset = { NULL, NULL }
};
