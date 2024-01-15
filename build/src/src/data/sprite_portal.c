#pragma bank 255
// SpriteSheet: portal

#include "gbs_types.h"
#include "data/sprite_portal_tileset.h"

BANKREF(sprite_portal)

#define SPRITE_29_STATE_DEFAULT 0
#define SPRITE_29_STATE_EXPLODE 0
#define SPRITE_29_STATE_OPEN 0

const metasprite_t sprite_portal_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_portal_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_portal_metasprite_2[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_portal_metasprites[] = {
    sprite_portal_metasprite_0,
    sprite_portal_metasprite_1,
    sprite_portal_metasprite_2
};

const struct animation_t sprite_portal_animations[] = {
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    }
};

const UWORD sprite_portal_animations_lookup[] = {
    SPRITE_29_STATE_DEFAULT
};

const struct spritesheet_t sprite_portal = {
    .n_metasprites = 3,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_portal_metasprites,
    .animations = sprite_portal_animations,
    .animations_lookup = sprite_portal_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_portal_tileset),
    .cgb_tileset = { NULL, NULL }
};
