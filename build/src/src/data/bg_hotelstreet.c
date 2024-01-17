#pragma bank 255

// Background: hotelstreet

#include "gbs_types.h"
#include "data/bg_hotelstreet_tileset.h"
#include "data/bg_hotelstreet_tilemap.h"
#include "data/bg_hotelstreet_tilemap_attr.h"

BANKREF(bg_hotelstreet)

const struct background_t bg_hotelstreet = {
    .width = 40,
    .height = 40,
    .tileset = TO_FAR_PTR_T(bg_hotelstreet_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_hotelstreet_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_hotelstreet_tilemap_attr)
};
