#pragma bank 255

// Scene: Sample Town

#include "gbs_types.h"
#include "data/bg_sample_town.h"
#include "data/scene_sample_town_collisions.h"
#include "data/palette_0.h"
#include "data/palette_12.h"
#include "data/sprite_player.h"
#include "data/scene_sample_town_actors.h"
#include "data/scene_sample_town_triggers.h"
#include "data/scene_sample_town_sprites.h"
#include "data/scene_sample_town_init.h"

BANKREF(scene_sample_town)

const struct scene_t scene_sample_town = {
    .width = 56,
    .height = 56,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_sample_town),
    .collisions = TO_FAR_PTR_T(scene_sample_town_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_12),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_player),
    .n_actors = 9,
    .n_triggers = 14,
    .n_sprites = 8,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_sample_town_actors),
    .triggers = TO_FAR_PTR_T(scene_sample_town_triggers),
    .sprites = TO_FAR_PTR_T(scene_sample_town_sprites),
    .script_init = TO_FAR_PTR_T(scene_sample_town_init)
};
