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
        .left = 39,
        .top = 18,
        .right = 39,
        .bottom = 26,
        .script = TO_FAR_PTR_T(trigger_59_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 12,
        .top = 0,
        .right = 25,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_60_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 0,
        .top = 19,
        .right = 0,
        .bottom = 38,
        .script = TO_FAR_PTR_T(trigger_65_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
