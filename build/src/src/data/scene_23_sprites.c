#pragma bank 255

// Scene: CopStation
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc006.h"
#include "data/sprite_player.h"

BANKREF(scene_23_sprites)

const far_ptr_t scene_23_sprites[] = {
    TO_FAR_PTR_T(sprite_npc006),
    TO_FAR_PTR_T(sprite_player)
};
