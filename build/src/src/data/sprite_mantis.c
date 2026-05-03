#pragma bank 255
// SpriteSheet: Mantis

#include "gbs_types.h"
#include "data/sprite_mantis_tileset.h"


BANKREF(sprite_mantis)

#define SPRITE_56_STATE_DEFAULT 0
#define SPRITE_56_STATE_EXPLODE 0
#define SPRITE_56_STATE_OPEN 0

const metasprite_t sprite_mantis_metasprite_0[]  = {
    { 8, 16, 0, 2 }, { 0, -8, 2, 2 },
    {metasprite_end}
};

const metasprite_t sprite_mantis_metasprite_1[]  = {
    { 8, 16, 4, 2 }, { 0, -8, 6, 2 },
    {metasprite_end}
};

const metasprite_t * const sprite_mantis_metasprites[] = {
    sprite_mantis_metasprite_0,
    sprite_mantis_metasprite_1
};

const struct animation_t sprite_mantis_animations[] = {
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

const UWORD sprite_mantis_animations_lookup[] = {
    SPRITE_56_STATE_DEFAULT
};

const struct spritesheet_t sprite_mantis = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_mantis_metasprites,
    .animations = sprite_mantis_animations,
    .animations_lookup = sprite_mantis_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_mantis_tileset),
    .cgb_tileset = { NULL, NULL }
};
