#pragma bank 255

// Tileset: sprite_cat_tileset

#include "gbs_types.h"

BANKREF(sprite_cat_tileset)

const struct tileset_t sprite_cat_tileset = {
    .n_tiles = 8,
    .tiles = {
        0x00, 0x40, 0x40, 0xE0, 0xC0, 0xE0, 0x40, 0xE0, 0xC0, 0xE0, 0x80, 0xE6, 0xC6, 0xEF, 0xCF, 0xFF,
        0x99, 0xFF, 0x10, 0xB9, 0x18, 0xBC, 0x8C, 0xFE, 0xC4, 0xEE, 0xEC, 0xFE, 0xF8, 0xFC, 0xF0, 0xF8,
        0x00, 0x40, 0x40, 0xE0, 0x60, 0xFB, 0x5B, 0xFF, 0x7F, 0xFF, 0x3F, 0xEE, 0x7F, 0xEE, 0x7B, 0xFF,
        0x3F, 0x7F, 0x0E, 0x3F, 0x1F, 0x3F, 0x1F, 0x3F, 0x1F, 0x3F, 0x3F, 0x7F, 0x3F, 0x7F, 0x37, 0x7F,
        0x00, 0x00, 0x00, 0x40, 0x40, 0xE0, 0xC0, 0xE0, 0x40, 0xE0, 0xC0, 0xE0, 0x80, 0xE6, 0xC6, 0xEF,
        0xCF, 0xFF, 0x99, 0xFF, 0x10, 0xB9, 0x18, 0xBC, 0x8C, 0xFE, 0xC4, 0xEE, 0xEC, 0xFE, 0xF8, 0xFC,
        0x00, 0x00, 0x00, 0x40, 0x40, 0xE0, 0x60, 0xFB, 0x5B, 0xFF, 0x7F, 0xFF, 0x3F, 0xEE, 0x7F, 0xEE,
        0x7B, 0xFF, 0x3F, 0x7F, 0x0E, 0x3F, 0x1F, 0x3F, 0x1F, 0x3F, 0x1F, 0x3F, 0x3F, 0x7F, 0x3F, 0x7F
    }
};
