#pragma bank 255

// Background: logo

#include "gbs_types.h"
#include "data/bg_logo_tileset.h"
#include "data/bg_logo_tilemap.h"
#include "data/bg_black_tilemap_attr.h"

BANKREF(bg_logo)

const struct background_t bg_logo = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_logo_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_logo_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_black_tilemap_attr)
};
