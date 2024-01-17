#pragma bank 255

// Scene: CopOuter
// Triggers

#include "gbs_types.h"
#include "data/trigger_49_interact.h"
#include "data/trigger_53_interact.h"
#include "data/trigger_61_interact.h"
#include "data/trigger_67_interact.h"
#include "data/trigger_70_interact.h"

BANKREF(scene_20_triggers)

const struct trigger_t scene_20_triggers[] = {
    {
        // Trigger 1,
        .x = 31,
        .y = 0,
        .width = 1,
        .height = 31,
        .script = TO_FAR_PTR_T(trigger_49_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 15,
        .y = 22,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_53_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 1,
        .y = 31,
        .width = 29,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_61_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 1,
        .y = 0,
        .width = 29,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_67_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 0,
        .y = 3,
        .width = 1,
        .height = 27,
        .script = TO_FAR_PTR_T(trigger_70_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
