#pragma bank 255
// SpriteSheet: ant

#include "gbs_types.h"
#include "data/sprite_ant_tileset.h"


BANKREF(sprite_ant)

#define SPRITE_53_STATE_DEFAULT 0
#define SPRITE_53_STATE_EXPLODE 0
#define SPRITE_53_STATE_OPEN 0

const metasprite_t sprite_ant_metasprite_0[]  = {
    { 8, 16, 0, 1 }, { 0, -8, 2, 1 },
    {metasprite_end}
};

const metasprite_t sprite_ant_metasprite_1[]  = {
    { 8, 16, 4, 1 }, { 0, -8, 6, 1 },
    {metasprite_end}
};

const metasprite_t * const sprite_ant_metasprites[] = {
    sprite_ant_metasprite_0,
    sprite_ant_metasprite_1
};

const struct animation_t sprite_ant_animations[] = {
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

const UWORD sprite_ant_animations_lookup[] = {
    SPRITE_53_STATE_DEFAULT
};

const struct spritesheet_t sprite_ant = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_ant_metasprites,
    .animations = sprite_ant_animations,
    .animations_lookup = sprite_ant_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_ant_tileset),
    .cgb_tileset = { NULL, NULL }
};
