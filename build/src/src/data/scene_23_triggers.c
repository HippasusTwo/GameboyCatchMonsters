#pragma bank 255

// Scene: CopStation
// Triggers

#include "gbs_types.h"
#include "data/trigger_52_interact.h"
#include "data/trigger_75_interact.h"

BANKREF(scene_23_triggers)

const struct trigger_t scene_23_triggers[] = {
    {
        // Trigger 1,
        .left = 8,
        .top = 16,
        .right = 11,
        .bottom = 16,
        .script = TO_FAR_PTR_T(trigger_52_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 10,
        .top = 11,
        .right = 11,
        .bottom = 11,
        .script = TO_FAR_PTR_T(trigger_75_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
