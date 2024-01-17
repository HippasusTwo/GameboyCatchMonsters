#pragma bank 255

// Scene: Outdoors
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc002.h"
#include "data/sprite_rock.h"

BANKREF(scene_27_sprites)

const far_ptr_t scene_27_sprites[] = {
    TO_FAR_PTR_T(sprite_npc002),
    TO_FAR_PTR_T(sprite_rock)
};
