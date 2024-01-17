#pragma bank 255

// Background: Police Station

#include "gbs_types.h"
#include "data/bg_police_station_tileset.h"
#include "data/bg_police_station_tilemap.h"
#include "data/bg_police_station_tilemap_attr.h"

BANKREF(bg_police_station)

const struct background_t bg_police_station = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(bg_police_station_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_police_station_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_police_station_tilemap_attr)
};
