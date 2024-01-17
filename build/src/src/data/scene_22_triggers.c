#pragma bank 255

// Scene: CityHall
// Triggers

#include "gbs_types.h"
#include "data/trigger_51_interact.h"
#include "data/trigger_56_interact.h"
#include "data/trigger_58_interact.h"
#include "data/trigger_74_interact.h"

BANKREF(scene_22_triggers)

const struct trigger_t scene_22_triggers[] = {
    {
        // Trigger 1,
        .x = 0,
        .y = 0,
        .width = 32,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_51_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 31,
        .y = 2,
        .width = 1,
        .height = 28,
        .script = TO_FAR_PTR_T(trigger_56_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 0,
        .y = 2,
        .width = 1,
        .height = 29,
        .script = TO_FAR_PTR_T(trigger_58_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 2,
        .y = 31,
        .width = 28,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_74_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
