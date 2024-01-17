#pragma bank 255

// Scene: Playground
// Sprites

#include "gbs_types.h"
#include "data/sprite_mouse.h"
#include "data/sprite_npc004.h"
#include "data/sprite_rock.h"

BANKREF(scene_26_sprites)

const far_ptr_t scene_26_sprites[] = {
    TO_FAR_PTR_T(sprite_mouse),
    TO_FAR_PTR_T(sprite_npc004),
    TO_FAR_PTR_T(sprite_rock)
};
