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
        .left = 6,
        .top = 17,
        .right = 7,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_54_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 6,
        .top = 11,
        .right = 6,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_72_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
