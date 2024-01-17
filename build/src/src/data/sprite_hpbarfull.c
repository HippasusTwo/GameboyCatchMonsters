#pragma bank 255
// SpriteSheet: hpbarfull

#include "gbs_types.h"
#include "data/sprite_hpbarfull_tileset.h"

BANKREF(sprite_hpbarfull)

#define SPRITE_47_STATE_DEFAULT 0
#define SPRITE_47_STATE_EXPLODE 0
#define SPRITE_47_STATE_OPEN 0

const metasprite_t sprite_hpbarfull_metasprite_0[]  = {
    { 0, 4, 0, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_hpbarfull_metasprites[] = {
    sprite_hpbarfull_metasprite_0
};

const struct animation_t sprite_hpbarfull_animations[] = {
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

const UWORD sprite_hpbarfull_animations_lookup[] = {
    SPRITE_47_STATE_DEFAULT
};

const struct spritesheet_t sprite_hpbarfull = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_hpbarfull_metasprites,
    .animations = sprite_hpbarfull_animations,
    .animations_lookup = sprite_hpbarfull_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_hpbarfull_tileset),
    .cgb_tileset = { NULL, NULL }
};
