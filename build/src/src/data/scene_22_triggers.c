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
        .left = 0,
        .top = 0,
        .right = 31,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_51_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 31,
        .top = 2,
        .right = 31,
        .bottom = 29,
        .script = TO_FAR_PTR_T(trigger_56_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 0,
        .top = 2,
        .right = 0,
        .bottom = 30,
        .script = TO_FAR_PTR_T(trigger_58_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 2,
        .top = 31,
        .right = 29,
        .bottom = 31,
        .script = TO_FAR_PTR_T(trigger_74_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
