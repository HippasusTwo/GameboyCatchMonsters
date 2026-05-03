#pragma bank 255
// SpriteSheet: baldguybymonkeyimage

#include "gbs_types.h"
#include "data/sprite_baldguybymonkeyimage_tileset.h"


BANKREF(sprite_baldguybymonkeyimage)

#define SPRITE_45_STATE_DEFAULT 0
#define SPRITE_45_STATE_EXPLODE 0
#define SPRITE_45_STATE_OPEN 0

const metasprite_t sprite_baldguybymonkeyimage_metasprite_0[]  = {
    { 8, 16, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_baldguybymonkeyimage_metasprite_1[]  = {
    { 8, 16, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_baldguybymonkeyimage_metasprite_2[]  = {
    { 8, 16, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_baldguybymonkeyimage_metasprite_3[]  = {
    { 8, 8, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_baldguybymonkeyimage_metasprite_4[]  = {
    {metasprite_end}
};

const metasprite_t * const sprite_baldguybymonkeyimage_metasprites[] = {
    sprite_baldguybymonkeyimage_metasprite_0,
    sprite_baldguybymonkeyimage_metasprite_1,
    sprite_baldguybymonkeyimage_metasprite_2,
    sprite_baldguybymonkeyimage_metasprite_3,
    sprite_baldguybymonkeyimage_metasprite_4
};

const struct animation_t sprite_baldguybymonkeyimage_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 3,
        .end = 3
    },
    {
        .start = 4,
        .end = 4
    },
    {
        .start = 4,
        .end = 4
    },
    {
        .start = 4,
        .end = 4
    },
    {
        .start = 4,
        .end = 4
    }
};

const UWORD sprite_baldguybymonkeyimage_animations_lookup[] = {
    SPRITE_45_STATE_DEFAULT
};

const struct spritesheet_t sprite_baldguybymonkeyimage = {
    .n_metasprites = 5,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_baldguybymonkeyimage_metasprites,
    .animations = sprite_baldguybymonkeyimage_animations,
    .animations_lookup = sprite_baldguybymonkeyimage_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(8) - 1,
        .right = PX_TO_SUBPX(16) - 1,
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(sprite_baldguybymonkeyimage_tileset),
    .cgb_tileset = { NULL, NULL }
};
