#pragma bank 255

// Palette: 0

#include "gbs_types.h"

BANKREF(palette_0)

const struct palette_t palette_0 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(28, 30, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(28, 30, 28), RGB(6, 19, 29), RGB(6, 7, 19), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(28, 30, 28), RGB(27, 18, 9), RGB(21, 5, 4), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 29, 25), RGB(27, 18, 9), RGB(21, 5, 4), RGB(6, 3, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9))
    }
};
