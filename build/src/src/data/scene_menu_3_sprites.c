#pragma bank 255

// Scene: Menu Page 3
// Sprites

#include "gbs_types.h"
#include "data/sprite_dog.h"
#include "data/sprite_ferret.h"
#include "data/sprite_turnip.h"
#include "data/sprite_squirrel.h"
#include "data/sprite_cat.h"
#include "data/sprite_checkbox.h"

BANKREF(scene_menu_3_sprites)

const far_ptr_t scene_menu_3_sprites[] = {
    TO_FAR_PTR_T(sprite_dog),
    TO_FAR_PTR_T(sprite_ferret),
    TO_FAR_PTR_T(sprite_turnip),
    TO_FAR_PTR_T(sprite_squirrel),
    TO_FAR_PTR_T(sprite_cat),
    TO_FAR_PTR_T(sprite_checkbox)
};
