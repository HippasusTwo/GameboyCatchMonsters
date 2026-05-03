#pragma bank 255
// SpriteSheet: williemouse

#include "gbs_types.h"
#include "data/sprite_williemouse_tileset.h"


BANKREF(sprite_williemouse)

#define SPRITE_66_STATE_DEFAULT 0
#define SPRITE_66_STATE_EXPLODE 0
#define SPRITE_66_STATE_OPEN 0

const metasprite_t sprite_williemouse_metasprite_0[]  = {
    { 8, 24, 0, 3 }, { -16, 0, 2, 0 }, { 16, -8, 4, 3 }, { -16, 0, 6, 0 }, { 16, -8, 8, 3 }, { -16, 0, 10, 0 }, { 16, -8, 12, 0 }, { -16, 0, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_williemouse_metasprite_1[]  = {
    { 9, 24, 0, 3 }, { -16, 0, 2, 0 }, { 16, -8, 4, 3 }, { -16, 0, 6, 0 }, { 16, -8, 8, 3 }, { -16, 0, 10, 0 }, { 16, -8, 12, 0 }, { -16, 0, 14, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_williemouse_metasprites[] = {
    sprite_williemouse_metasprite_0,
    sprite_williemouse_metasprite_1
};

const struct animation_t sprite_williemouse_animations[] = {
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

const UWORD sprite_williemouse_animations_lookup[] = {
    SPRITE_66_STATE_DEFAULT
};

const struct spritesheet_t sprite_williemouse = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_williemouse_metasprites,
    .animations = sprite_williemouse_animations,
    .animations_lookup = sprite_williemouse_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_williemouse_tileset),
    .cgb_tileset = { NULL, NULL }
};
