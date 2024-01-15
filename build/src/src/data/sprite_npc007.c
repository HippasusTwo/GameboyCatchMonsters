#pragma bank 255
// SpriteSheet: npc007

#include "gbs_types.h"
#include "data/sprite_npc007_tileset.h"

BANKREF(sprite_npc007)

#define SPRITE_10_STATE_DEFAULT 0
#define SPRITE_10_STATE_EXPLODE 0
#define SPRITE_10_STATE_OPEN 0

const metasprite_t sprite_npc007_metasprite_0[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_npc007_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_npc007_metasprite_2[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_npc007_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_npc007_metasprites[] = {
    sprite_npc007_metasprite_0,
    sprite_npc007_metasprite_1,
    sprite_npc007_metasprite_2,
    sprite_npc007_metasprite_3
};

const struct animation_t sprite_npc007_animations[] = {
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
    }
};

const UWORD sprite_npc007_animations_lookup[] = {
    SPRITE_10_STATE_DEFAULT
};

const struct spritesheet_t sprite_npc007 = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_npc007_metasprites,
    .animations = sprite_npc007_animations,
    .animations_lookup = sprite_npc007_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_npc007_tileset),
    .cgb_tileset = { NULL, NULL }
};
