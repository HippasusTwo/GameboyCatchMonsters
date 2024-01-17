#pragma bank 255

// Background: InsideStation2

#include "gbs_types.h"
#include "data/bg_insidestation2_tileset.h"
#include "data/bg_insidestation2_tilemap.h"
#include "data/bg_insidestation2_tilemap_attr.h"

BANKREF(bg_insidestation2)

const struct background_t bg_insidestation2 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_insidestation2_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_insidestation2_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_insidestation2_tilemap_attr)
};
