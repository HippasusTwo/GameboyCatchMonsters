#pragma bank 255

// Background: inside_seven_eleven

#include "gbs_types.h"
#include "data/sprite_inside_seven_eleven_tileset.h"
#include "data/sprite_inside_seven_eleven_tilemap.h"
#include "data/sprite_inside_seven_eleven_tilemap_attr.h"

BANKREF(sprite_inside_seven_eleven)

const struct background_t sprite_inside_seven_eleven = {
    .width = 22,
    .height = 20,
    .tileset = TO_FAR_PTR_T(sprite_inside_seven_eleven_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(sprite_inside_seven_eleven_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(sprite_inside_seven_eleven_tilemap_attr)
};
