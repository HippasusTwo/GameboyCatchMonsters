#pragma bank 255
// SpriteSheet: space_mine

#include "gbs_types.h"
#include "data/sprite_space_mine_tileset.h"

BANKREF(sprite_space_mine)

#define SPRITE_23_STATE_DEFAULT 0
#define SPRITE_23_STATE_EXPLODE 8
#define SPRITE_23_STATE_OPEN 0

const metasprite_t sprite_space_mine_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_space_mine_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_space_mine_metasprite_2[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_space_mine_metasprite_3[]  = {
    { 0, 8, 12, 0 }, { 0, -8, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_space_mine_metasprite_4[]  = {
    { 0, 8, 16, 0 }, { 0, -8, 18, 0 },
    {metasprite_end}
};

const metasprite_t sprite_space_mine_metasprite_5[]  = {
    { 0, 8, 20, 0 }, { 0, -8, 22, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_space_mine_metasprites[] = {
    sprite_space_mine_metasprite_0,
    sprite_space_mine_metasprite_1,
    sprite_space_mine_metasprite_2,
    sprite_space_mine_metasprite_3,
    sprite_space_mine_metasprite_4,
    sprite_space_mine_metasprite_5
};

const struct animation_t sprite_space_mine_animations[] = {
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
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    },
    {
        .start = 2,
        .end = 5
    }
};

const UWORD sprite_space_mine_animations_lookup[] = {
    SPRITE_23_STATE_DEFAULT,
    SPRITE_23_STATE_EXPLODE
};

const struct spritesheet_t sprite_space_mine = {
    .n_metasprites = 6,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_space_mine_metasprites,
    .animations = sprite_space_mine_animations,
    .animations_lookup = sprite_space_mine_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_space_mine_tileset),
    .cgb_tileset = { NULL, NULL }
};
