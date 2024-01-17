#pragma bank 255

// Scene: Deeper Underground
// Sprites

#include "gbs_types.h"
#include "data/sprite_chest.h"
#include "data/sprite_ferret.h"
#include "data/sprite_gerbil.h"

BANKREF(scene_deeper_underground_sprites)

const far_ptr_t scene_deeper_underground_sprites[] = {
    TO_FAR_PTR_T(sprite_chest),
    TO_FAR_PTR_T(sprite_ferret),
    TO_FAR_PTR_T(sprite_gerbil)
};
