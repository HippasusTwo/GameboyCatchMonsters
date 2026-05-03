#pragma bank 255

// Scene: Scene 30
// Sprites

#include "gbs_types.h"
#include "data/sprite_pc_car.h"
#include "data/sprite_mantis.h"

BANKREF(scene_30_sprites)

const far_ptr_t scene_30_sprites[] = {
    TO_FAR_PTR_T(sprite_pc_car),
    TO_FAR_PTR_T(sprite_mantis)
};
