#pragma bank 255

// Scene: Outdoors
// Triggers

#include "gbs_types.h"
#include "data/trigger_66_interact.h"

BANKREF(scene_27_triggers)

const struct trigger_t scene_27_triggers[] = {
    {
        // Trigger 1,
        .x = 29,
        .y = 21,
        .width = 1,
        .height = 7,
        .script = TO_FAR_PTR_T(trigger_66_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
