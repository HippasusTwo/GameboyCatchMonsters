#pragma bank 255
// SpriteSheet: frog

#include "gbs_types.h"
#include "data/sprite_frog_tileset.h"

BANKREF(sprite_frog)

#define SPRITE_38_STATE_DEFAULT 0
#define SPRITE_38_STATE_EXPLODE 0
#define SPRITE_38_STATE_OPEN 0

const metasprite_t sprite_frog_metasprite_0[]  = {
    { 0, 8, 0, 2 }, { 0, -8, 2, 2 },
    {metasprite_end}
};

const metasprite_t sprite_frog_metasprite_1[]  = {
    { 0, 8, 4, 2 }, { 0, -8, 6, 2 },
    {metasprite_end}
};

const metasprite_t * const sprite_frog_metasprites[] = {
    sprite_frog_metasprite_0,
    sprite_frog_metasprite_1
};

const struct animation_t sprite_frog_animations[] = {
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

const UWORD sprite_frog_animations_lookup[] = {
    SPRITE_38_STATE_DEFAULT
};

const struct spritesheet_t sprite_frog = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_frog_metasprites,
    .animations = sprite_frog_animations,
    .animations_lookup = sprite_frog_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_frog_tileset),
    .cgb_tileset = { NULL, NULL }
};
