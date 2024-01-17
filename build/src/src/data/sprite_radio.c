#pragma bank 255
// SpriteSheet: radio

#include "gbs_types.h"
#include "data/sprite_radio_tileset.h"

BANKREF(sprite_radio)

#define SPRITE_27_STATE_DEFAULT 0
#define SPRITE_27_STATE_EXPLODE 0
#define SPRITE_27_STATE_OPEN 0

const metasprite_t sprite_radio_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_radio_metasprites[] = {
    sprite_radio_metasprite_0
};

const struct animation_t sprite_radio_animations[] = {
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

const UWORD sprite_radio_animations_lookup[] = {
    SPRITE_27_STATE_DEFAULT
};

const struct spritesheet_t sprite_radio = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_radio_metasprites,
    .animations = sprite_radio_animations,
    .animations_lookup = sprite_radio_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_radio_tileset),
    .cgb_tileset = { NULL, NULL }
};
