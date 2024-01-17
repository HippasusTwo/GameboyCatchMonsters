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
        .x = 0,
        .y = 21,
        .width = 1,
        .height = 8,
        .script = TO_FAR_PTR_T(trigger_57_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 14,
        .y = 0,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_62_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
