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
        .x = 7,
        .y = 39,
        .width = 30,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_68_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 22,
        .y = 19,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_69_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
