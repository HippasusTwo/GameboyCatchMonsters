#pragma bank 255

// Background: OverWorld_Playground_PixelNook

#include "gbs_types.h"
#include "data/bg_overworld_playground_pix_tileset.h"
#include "data/bg_overworld_playground_pix_tilemap.h"
#include "data/bg_overworld_pixelnook_indu_tilemap_attr.h"

BANKREF(bg_overworld_playground_pix)

const struct background_t bg_overworld_playground_pix = {
    .width = 40,
    .height = 40,
    .tileset = TO_FAR_PTR_T(bg_overworld_playground_pix_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_overworld_playground_pix_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_overworld_pixelnook_indu_tilemap_attr)
};
