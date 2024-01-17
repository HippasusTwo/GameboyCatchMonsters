#pragma bank 255

// Scene: Parallax Example
// Sprites

#include "gbs_types.h"
#include "data/sprite_elephant.h"
#include "data/sprite_woman_platform.h"

BANKREF(scene_parallax_example_sprites)

const far_ptr_t scene_parallax_example_sprites[] = {
    TO_FAR_PTR_T(sprite_elephant),
    TO_FAR_PTR_T(sprite_woman_platform)
};
