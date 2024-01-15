#pragma bank 255
// SpriteSheet: enemy_ship

#include "gbs_types.h"
#include "data/sprite_enemy_ship_tileset.h"

BANKREF(sprite_enemy_ship)

#define SPRITE_22_STATE_DEFAULT 0
#define SPRITE_22_STATE_EXPLODE 8
#define SPRITE_22_STATE_OPEN 0

const metasprite_t sprite_enemy_ship_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_enemy_ship_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_enemy_ship_metasprite_2[]  = {
    { 0, 8, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t sprite_enemy_ship_metasprite_3[]  = {
    { 0, 8, 10, 0 }, { 0, -8, 12, 0 },
    {metasprite_end}
};

const metasprite_t sprite_enemy_ship_metasprite_4[]  = {
    { 0, 8, 14, 0 }, { 0, -8, 16, 0 },
    {metasprite_end}
};

const metasprite_t sprite_enemy_ship_metasprite_5[]  = {
    { 0, 8, 18, 0 }, { 0, -8, 20, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_enemy_ship_metasprites[] = {
    sprite_enemy_ship_metasprite_0,
    sprite_enemy_ship_metasprite_1,
    sprite_enemy_ship_metasprite_2,
    sprite_enemy_ship_metasprite_3,
    sprite_enemy_ship_metasprite_4,
    sprite_enemy_ship_metasprite_5
};

const struct animation_t sprite_enemy_ship_animations[] = {
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

const UWORD sprite_enemy_ship_animations_lookup[] = {
    SPRITE_22_STATE_DEFAULT,
    SPRITE_22_STATE_EXPLODE
};

const struct spritesheet_t sprite_enemy_ship = {
    .n_metasprites = 6,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_enemy_ship_metasprites,
    .animations = sprite_enemy_ship_animations,
    .animations_lookup = sprite_enemy_ship_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_enemy_ship_tileset),
    .cgb_tileset = { NULL, NULL }
};
