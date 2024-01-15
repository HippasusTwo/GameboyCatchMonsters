#pragma bank 255

// Palette: 5

#include "gbs_types.h"

BANKREF(palette_5)

const struct palette_t palette_5 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(29, 31, 1), RGB(2, 23, 30), RGB(25, 1, 15), RGB(0, 0, 9)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 28), RGB(0, 0, 9)),
        CGB_PALETTE(RGB(31, 27, 21), RGB(28, 21, 15), RGB(15, 11, 17), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 27, 22), RGB(15, 24, 15), RGB(13, 17, 8), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9))
    }
};
