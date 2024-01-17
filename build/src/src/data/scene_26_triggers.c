#pragma bank 255

// Scene: Playground
// Triggers

#include "gbs_types.h"
#include "data/trigger_59_interact.h"
#include "data/trigger_60_interact.h"
#include "data/trigger_65_interact.h"

BANKREF(scene_26_triggers)

const struct trigger_t scene_26_triggers[] = {
    {
        // Trigger 1,
        .x = 39,
        .y = 18,
        .width = 1,
        .height = 9,
        .script = TO_FAR_PTR_T(trigger_59_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 12,
        .y = 0,
        .width = 14,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_60_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 0,
        .y = 19,
        .width = 1,
        .height = 20,
        .script = TO_FAR_PTR_T(trigger_65_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
