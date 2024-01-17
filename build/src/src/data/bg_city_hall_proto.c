#pragma bank 255

// Background: City Hall proto

#include "gbs_types.h"
#include "data/bg_city_hall_proto_tileset.h"
#include "data/bg_city_hall_proto_tilemap.h"
#include "data/bg_city_hall_proto_tilemap_attr.h"

BANKREF(bg_city_hall_proto)

const struct background_t bg_city_hall_proto = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(bg_city_hall_proto_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_city_hall_proto_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_city_hall_proto_tilemap_attr)
};
