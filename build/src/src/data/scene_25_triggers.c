#pragma bank 255

// Scene: IndustryWorkyard
// Triggers

#include "gbs_types.h"
#include "data/trigger_57_interact.h"
#include "data/trigger_62_interact.h"

BANKREF(scene_25_triggers)

const struct trigger_t scene_25_triggers[] = {
    {
        // Trigger 1,
        .left = 0,
        .top = 21,
        .right = 0,
        .bottom = 28,
        .script = TO_FAR_PTR_T(trigger_57_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 14,
        .top = 0,
        .right = 15,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_62_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
