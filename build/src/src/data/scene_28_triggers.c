#pragma bank 255

// Scene: Restaurant
// Triggers

#include "gbs_types.h"
#include "data/trigger_68_interact.h"
#include "data/trigger_69_interact.h"

BANKREF(scene_28_triggers)

const struct trigger_t scene_28_triggers[] = {
    {
        // Trigger 1,
        .left = 7,
        .top = 39,
        .right = 36,
        .bottom = 39,
        .script = TO_FAR_PTR_T(trigger_68_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 22,
        .top = 19,
        .right = 23,
        .bottom = 19,
        .script = TO_FAR_PTR_T(trigger_69_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
