#pragma bank 255

// Scene: CityHall

#include "gbs_types.h"
#include "data/bg_city_hall_proto.h"
#include "data/scene_22_collisions.h"
#include "data/palette_13.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_22_actors.h"
#include "data/scene_22_triggers.h"
#include "data/scene_22_sprites.h"
#include "data/scene_22_init.h"

BANKREF(scene_22)

const struct scene_t scene_22 = {
    .width = 32,
    .height = 32,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_city_hall_proto),
    .collisions = TO_FAR_PTR_T(scene_22_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_13),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 5,
    .n_triggers = 4,
    .n_sprites = 5,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_22_actors),
    .triggers = TO_FAR_PTR_T(scene_22_triggers),
    .sprites = TO_FAR_PTR_T(scene_22_sprites),
    .script_init = TO_FAR_PTR_T(scene_22_init)
};
