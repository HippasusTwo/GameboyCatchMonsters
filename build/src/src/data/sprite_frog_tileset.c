#pragma bank 255

// Tileset: sprite_frog_tileset

#include "gbs_types.h"

BANKREF(sprite_frog_tileset)

const struct tileset_t sprite_frog_tileset = {
    .n_tiles = 8,
    .tiles = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0xF8, 0x2C, 0xDC, 0x24, 0xFC,
        0x36, 0xEE, 0x12, 0xEE, 0x06, 0xFE, 0xD8, 0xF8, 0x04, 0xFC, 0x92, 0x7E, 0x92, 0x7E, 0x59, 0x7F,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x0F, 0x14, 0x1B, 0x24, 0x3F,
        0x2C, 0x37, 0x48, 0x77, 0x30, 0x3F, 0x1B, 0x1F, 0x20, 0x3F, 0x43, 0x7C, 0x53, 0x7C, 0x94, 0xFC,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0xF8, 0x2C, 0xDC, 0x24, 0xFC,
        0x36, 0xEE, 0x92, 0x6E, 0xC6, 0xBE, 0xD8, 0xF8, 0x04, 0xFC, 0x12, 0xFE, 0x92, 0x7E, 0xD9, 0x7F,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x0F, 0x14, 0x1B, 0x24, 0x3F,
        0x2C, 0x37, 0x49, 0x76, 0x33, 0x3D, 0x1B, 0x1F, 0x20, 0x3F, 0x40, 0x7F, 0x53, 0x7C, 0x97, 0xFC
    }
};
