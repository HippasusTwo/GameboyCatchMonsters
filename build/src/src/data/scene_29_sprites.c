#pragma bank 255

// Scene: HotelOutside
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc008.h"
#include "data/sprite_robot.h"

BANKREF(scene_29_sprites)

const far_ptr_t scene_29_sprites[] = {
    TO_FAR_PTR_T(sprite_npc008),
    TO_FAR_PTR_T(sprite_robot)
};
