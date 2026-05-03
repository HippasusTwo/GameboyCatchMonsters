#pragma bank 255
// SpriteSheet: Chipmunk

#include "gbs_types.h"
#include "data/sprite_chipmunk_tileset.h"


BANKREF(sprite_chipmunk)

#define SPRITE_49_STATE_DEFAULT 0
#define SPRITE_49_STATE_EXPLODE 0
#define SPRITE_49_STATE_OPEN 0

const metasprite_t sprite_chipmunk_metasprite_0[]  = {
    { 8, 16, 0, 5 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_chipmunk_metasprite_1[]  = {
    { 8, 16, 4, 5 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_chipmunk_metasprites[] = {
    sprite_chipmunk_metasprite_0,
    sprite_chipmunk_metasprite_1
};

const struct animation_t sprite_chipmunk_animations[] = {
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

const UWORD sprite_chipmunk_animations_lookup[] = {
    SPRITE_49_STATE_DEFAULT
};

const struct spritesheet_t sprite_chipmunk = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_chipmunk_metasprites,
    .animations = sprite_chipmunk_animations,
    .animations_lookup = sprite_chipmunk_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_chipmunk_tileset),
    .cgb_tileset = { NULL, NULL }
};
