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
        .left = 31,
        .top = 0,
        .right = 31,
        .bottom = 30,
        .script = TO_FAR_PTR_T(trigger_49_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 15,
        .top = 22,
        .right = 16,
        .bottom = 22,
        .script = TO_FAR_PTR_T(trigger_53_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 1,
        .top = 31,
        .right = 29,
        .bottom = 31,
        .script = TO_FAR_PTR_T(trigger_61_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 1,
        .top = 0,
        .right = 29,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_67_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 0,
        .top = 3,
        .right = 0,
        .bottom = 29,
        .script = TO_FAR_PTR_T(trigger_70_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
