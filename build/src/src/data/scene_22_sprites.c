#pragma bank 255

// Scene: CityHall
// Sprites

#include "gbs_types.h"
#include "data/sprite_baldguybymonkeyimage.h"
#include "data/sprite_chipmunk.h"
#include "data/sprite_npc007.h"
#include "data/sprite_player.h"
#include "data/sprite_duck.h"

BANKREF(scene_22_sprites)

const far_ptr_t scene_22_sprites[] = {
    TO_FAR_PTR_T(sprite_baldguybymonkeyimage),
    TO_FAR_PTR_T(sprite_chipmunk),
    TO_FAR_PTR_T(sprite_npc007),
    TO_FAR_PTR_T(sprite_player),
    TO_FAR_PTR_T(sprite_duck)
};
