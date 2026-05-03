#pragma bank 255

// Palette: 21

#include "gbs_types.h"

BANKREF(palette_21)

const struct palette_t palette_21 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_BLACK),
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 30, 28), RGB(31, 30, 28), RGB(27, 16, 15), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(23, 26, 26), RGB(27, 16, 27), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(28, 31, 20), RGB(28, 31, 20), RGB(15, 25, 7), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 21, 21), RGB(31, 21, 21), RGB(30, 8, 8), RGB(13, 4, 4)),
        CGB_PALETTE(RGB(31, 14, 28), RGB(31, 14, 28), RGB(22, 9, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 28), RGB(31, 31, 28), RGB(30, 30, 7), RGB(13, 6, 4)),
        CGB_PALETTE(RGB(29, 30, 31), RGB(29, 30, 31), RGB(17, 22, 31), RGB(4, 5, 20)),
        CGB_PALETTE(RGB(31, 27, 21), RGB(31, 27, 21), RGB(28, 21, 15), RGB(1, 4, 9))
    }
};
