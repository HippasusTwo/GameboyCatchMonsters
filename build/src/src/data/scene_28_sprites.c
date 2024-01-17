#pragma bank 255

// Scene: Restaurant
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc001.h"
#include "data/sprite_ferret.h"
#include "data/sprite_pc_car.h"
#include "data/sprite_hpbarfull.h"
#include "data/sprite_player.h"

BANKREF(scene_28_sprites)

const far_ptr_t scene_28_sprites[] = {
    TO_FAR_PTR_T(sprite_npc001),
    TO_FAR_PTR_T(sprite_ferret),
    TO_FAR_PTR_T(sprite_pc_car),
    TO_FAR_PTR_T(sprite_hpbarfull),
    TO_FAR_PTR_T(sprite_player)
};
