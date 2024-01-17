#pragma bank 255

// Scene: CopOuter
// Sprites

#include "gbs_types.h"
#include "data/sprite_hedgehog.h"
#include "data/sprite_frog.h"

BANKREF(scene_20_sprites)

const far_ptr_t scene_20_sprites[] = {
    TO_FAR_PTR_T(sprite_hedgehog),
    TO_FAR_PTR_T(sprite_frog)
};
