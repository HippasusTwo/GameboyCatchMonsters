#pragma bank 255

// Scene: HotelOutside
// Triggers

#include "gbs_types.h"
#include "data/trigger_71_interact.h"

BANKREF(scene_29_triggers)

const struct trigger_t scene_29_triggers[] = {
    {
        // Trigger 1,
        .left = 39,
        .top = 5,
        .right = 39,
        .bottom = 30,
        .script = TO_FAR_PTR_T(trigger_71_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
