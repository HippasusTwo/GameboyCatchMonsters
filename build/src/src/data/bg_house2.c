#pragma bank 255

// Background: house2

#include "gbs_types.h"
#include "data/bg_house2_tileset.h"
#include "data/bg_house2_tilemap.h"
#include "data/bg_black_tilemap_attr.h"

BANKREF(bg_house2)

const struct background_t bg_house2 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_house2_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_house2_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_black_tilemap_attr)
};
