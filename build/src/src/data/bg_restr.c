#pragma bank 255

// Background: restr

#include "gbs_types.h"
#include "data/bg_restr_tileset.h"
#include "data/bg_restr_tilemap.h"
#include "data/bg_restr_tilemap_attr.h"

BANKREF(bg_restr)

const struct background_t bg_restr = {
    .width = 40,
    .height = 40,
    .tileset = TO_FAR_PTR_T(bg_restr_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_restr_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_restr_tilemap_attr)
};
