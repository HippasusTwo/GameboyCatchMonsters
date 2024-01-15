#pragma bank 255
// SpriteSheet: signpost

#include "gbs_types.h"
#include "data/sprite_signpost_tileset.h"

BANKREF(sprite_signpost)

#define SPRITE_8_STATE_DEFAULT 0
#define SPRITE_8_STATE_EXPLODE 0
#define SPRITE_8_STATE_OPEN 0

const metasprite_t sprite_signpost_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_signpost_metasprites[] = {
    sprite_signpost_metasprite_0
};

const struct animation_t sprite_signpost_animations[] = {
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

const UWORD sprite_signpost_animations_lookup[] = {
    SPRITE_8_STATE_DEFAULT
};

const struct spritesheet_t sprite_signpost = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_signpost_metasprites,
    .animations = sprite_signpost_animations,
    .animations_lookup = sprite_signpost_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_signpost_tileset),
    .cgb_tileset = { NULL, NULL }
};
