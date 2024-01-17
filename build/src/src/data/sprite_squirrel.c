#pragma bank 255
// SpriteSheet: Squirrel

#include "gbs_types.h"
#include "data/sprite_squirrel_tileset.h"

BANKREF(sprite_squirrel)

#define SPRITE_12_STATE_DEFAULT 0
#define SPRITE_12_STATE_EXPLODE 0
#define SPRITE_12_STATE_OPEN 0

const metasprite_t sprite_squirrel_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_squirrel_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
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
    SPRITE_12_STATE_DEFAULT
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
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_squirrel_tileset),
    .cgb_tileset = { NULL, NULL }
};
