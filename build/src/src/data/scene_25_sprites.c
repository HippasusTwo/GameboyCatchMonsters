#pragma bank 255

// Scene: IndustryWorkyard
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc006.h"
#include "data/sprite_mouse.h"

BANKREF(scene_25_sprites)

const far_ptr_t scene_25_sprites[] = {
    TO_FAR_PTR_T(sprite_npc006),
    TO_FAR_PTR_T(sprite_mouse)
};
