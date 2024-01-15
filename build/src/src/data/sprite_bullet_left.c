#pragma bank 255
// SpriteSheet: bullet_left

#include "gbs_types.h"
#include "data/sprite_bullet_left_tileset.h"

BANKREF(sprite_bullet_left)

#define SPRITE_2_STATE_DEFAULT 0
#define SPRITE_2_STATE_EXPLODE 0
#define SPRITE_2_STATE_OPEN 0

const metasprite_t sprite_bullet_left_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_left_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_bullet_left_metasprites[] = {
    sprite_bullet_left_metasprite_0,
    sprite_bullet_left_metasprite_1
};

const struct animation_t sprite_bullet_left_animations[] = {
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

const UWORD sprite_bullet_left_animations_lookup[] = {
    SPRITE_2_STATE_DEFAULT
};

const struct spritesheet_t sprite_bullet_left = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_bullet_left_metasprites,
    .animations = sprite_bullet_left_animations,
    .animations_lookup = sprite_bullet_left_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_bullet_left_tileset),
    .cgb_tileset = { NULL, NULL }
};
