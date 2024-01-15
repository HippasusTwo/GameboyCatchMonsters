#pragma bank 255

// Scene: Battle
// Sprites

#include "gbs_types.h"
#include "data/sprite_cat.h"
#include "data/sprite_turnip.h"

BANKREF(scene_19_sprites)

const far_ptr_t scene_19_sprites[] = {
    TO_FAR_PTR_T(sprite_cat),
    TO_FAR_PTR_T(sprite_turnip)
};
