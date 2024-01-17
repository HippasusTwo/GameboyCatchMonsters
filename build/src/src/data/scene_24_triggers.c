#pragma bank 255

// Scene: Mart
// Triggers

#include "gbs_types.h"
#include "data/trigger_54_interact.h"
#include "data/trigger_72_interact.h"

BANKREF(scene_24_triggers)

const struct trigger_t scene_24_triggers[] = {
    {
        // Trigger 1,
        .x = 6,
        .y = 17,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_54_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 6,
        .y = 11,
        .width = 1,
        .height = 4,
        .script = TO_FAR_PTR_T(trigger_72_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
