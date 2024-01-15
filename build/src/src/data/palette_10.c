#pragma bank 255

// Palette: 10

#include "gbs_types.h"

BANKREF(palette_10)

const struct palette_t palette_10 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(25, 29, 31), RGB(27, 18, 9), RGB(21, 5, 4), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(28, 31, 20), RGB(15, 25, 7), RGB(9, 17, 3), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 27, 21), RGB(28, 21, 15), RGB(15, 11, 17), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(25, 29, 31), RGB(29, 27, 23), RGB(26, 17, 22), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(25, 29, 31), RGB(22, 30, 17), RGB(11, 15, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(25, 29, 31), RGB(22, 30, 17), RGB(11, 15, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9))
    }
};
