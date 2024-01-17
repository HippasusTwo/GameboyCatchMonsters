#pragma bank 255

// Background: highway

#include "gbs_types.h"
#include "data/bg_highway_tileset.h"
#include "data/bg_highway_tilemap.h"
#include "data/bg_overworld_pixelnook_indu_tilemap_attr.h"

BANKREF(bg_highway)

const struct background_t bg_highway = {
    .width = 40,
    .height = 40,
    .tileset = TO_FAR_PTR_T(bg_highway_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_highway_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_overworld_pixelnook_indu_tilemap_attr)
};
