#pragma bank 255

// Scene: Mart Town
// Sprites

#include "gbs_types.h"
#include "data/sprite_savepoint.h"
#include "data/sprite_baldguybymonkeyimage.h"
#include "data/sprite_guybymonkeyimage.h"
#include "data/sprite_mouse.h"
#include "data/sprite_knight_animated.h"
#include "data/sprite_sage.h"

BANKREF(scene_21_sprites)

const far_ptr_t scene_21_sprites[] = {
    TO_FAR_PTR_T(sprite_savepoint),
    TO_FAR_PTR_T(sprite_baldguybymonkeyimage),
    TO_FAR_PTR_T(sprite_guybymonkeyimage),
    TO_FAR_PTR_T(sprite_mouse),
    TO_FAR_PTR_T(sprite_knight_animated),
    TO_FAR_PTR_T(sprite_sage)
};
