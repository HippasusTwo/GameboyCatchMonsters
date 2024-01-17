#pragma bank 255

// Scene: Battle
// Sprites

#include "gbs_types.h"
#include "data/sprite_hpbarfull.h"

BANKREF(scene_battle_sprites)

const far_ptr_t scene_battle_sprites[] = {
    TO_FAR_PTR_T(sprite_hpbarfull)
};
