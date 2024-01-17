#pragma bank 255

// Scene: HotelOutside

#include "gbs_types.h"
#include "data/bg_hotelstreet.h"
#include "data/scene_29_collisions.h"
#include "data/palette_16.h"
#include "data/palette_17.h"
#include "data/sprite_blackplayer.h"
#include "data/scene_29_actors.h"
#include "data/scene_29_triggers.h"
#include "data/scene_29_sprites.h"
#include "data/scene_29_init.h"

BANKREF(scene_29)

const struct scene_t scene_29 = {
    .width = 40,
    .height = 40,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_hotelstreet),
    .collisions = TO_FAR_PTR_T(scene_29_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_16),
    .sprite_palette = TO_FAR_PTR_T(palette_17),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_blackplayer),
    .n_actors = 1,
    .n_triggers = 1,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_29_actors),
    .triggers = TO_FAR_PTR_T(scene_29_triggers),
    .sprites = TO_FAR_PTR_T(scene_29_sprites),
    .script_init = TO_FAR_PTR_T(scene_29_init)
};
