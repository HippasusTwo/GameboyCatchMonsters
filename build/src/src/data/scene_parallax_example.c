#pragma bank 255

// Scene: Parallax Example

#include "gbs_types.h"
#include "data/bg_parallax.h"
#include "data/scene_parallax_example_collisions.h"
#include "data/palette_10.h"
#include "data/palette_13.h"
#include "data/sprite_player_platform.h"
#include "data/scene_parallax_example_actors.h"
#include "data/scene_parallax_example_triggers.h"
#include "data/scene_parallax_example_sprites.h"
#include "data/scene_parallax_example_init.h"

BANKREF(scene_parallax_example)

const struct scene_t scene_parallax_example = {
    .width = 80,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_parallax),
    .collisions = TO_FAR_PTR_T(scene_parallax_example_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0, 10, 4), PARALLAX_STEP(10, 13, 1), PARALLAX_STEP(13, 0, 0)
    },
    .palette = TO_FAR_PTR_T(palette_10),
    .sprite_palette = TO_FAR_PTR_T(palette_13),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_player_platform),
    .n_actors = 2,
    .n_triggers = 1,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_parallax_example_actors),
    .triggers = TO_FAR_PTR_T(scene_parallax_example_triggers),
    .sprites = TO_FAR_PTR_T(scene_parallax_example_sprites),
    .script_init = TO_FAR_PTR_T(scene_parallax_example_init)
};
