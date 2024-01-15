#pragma bank 255
// SpriteSheet: ice

#include "gbs_types.h"
#include "data/sprite_ice_tileset.h"

BANKREF(sprite_ice)

#define SPRITE_17_STATE_DEFAULT 0
#define SPRITE_17_STATE_EXPLODE 0
#define SPRITE_17_STATE_OPEN 0

const metasprite_t sprite_ice_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_ice_metasprites[] = {
    sprite_ice_metasprite_0
};

const struct animation_t sprite_ice_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    }
};

const UWORD sprite_ice_animations_lookup[] = {
    SPRITE_17_STATE_DEFAULT
};

const struct spritesheet_t sprite_ice = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_ice_metasprites,
    .animations = sprite_ice_animations,
    .animations_lookup = sprite_ice_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_ice_tileset),
    .cgb_tileset = { NULL, NULL }
};
