#pragma bank 255
// SpriteSheet: Ferret

#include "gbs_types.h"
#include "data/sprite_ferret_tileset.h"


BANKREF(sprite_ferret)

#define SPRITE_34_STATE_DEFAULT 0
#define SPRITE_34_STATE_EXPLODE 0
#define SPRITE_34_STATE_OPEN 0

const metasprite_t sprite_ferret_metasprite_0[]  = {
    { 8, 16, 0, 4 }, { 0, -8, 2, 4 },
    {metasprite_end}
};

const metasprite_t sprite_ferret_metasprite_1[]  = {
    { 8, 16, 4, 4 }, { 0, -8, 6, 4 },
    {metasprite_end}
};

const metasprite_t * const sprite_ferret_metasprites[] = {
    sprite_ferret_metasprite_0,
    sprite_ferret_metasprite_1
};

const struct animation_t sprite_ferret_animations[] = {
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

const UWORD sprite_ferret_animations_lookup[] = {
    SPRITE_34_STATE_DEFAULT
};

const struct spritesheet_t sprite_ferret = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_ferret_metasprites,
    .animations = sprite_ferret_animations,
    .animations_lookup = sprite_ferret_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_ferret_tileset),
    .cgb_tileset = { NULL, NULL }
};
