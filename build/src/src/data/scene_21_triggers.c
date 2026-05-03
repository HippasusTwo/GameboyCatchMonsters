#pragma bank 255

// Scene: Mart Town
// Triggers

#include "gbs_types.h"
#include "data/trigger_47_interact.h"
#include "data/trigger_48_interact.h"
#include "data/trigger_50_interact.h"
#include "data/trigger_55_interact.h"
#include "data/trigger_63_interact.h"
#include "data/trigger_64_interact.h"

BANKREF(scene_21_triggers)

const struct trigger_t scene_21_triggers[] = {
    {
        // Trigger 1,
        .left = 79,
        .top = 18,
        .right = 79,
        .bottom = 24,
        .script = TO_FAR_PTR_T(trigger_47_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 0,
        .top = 17,
        .right = 0,
        .bottom = 36,
        .script = TO_FAR_PTR_T(trigger_48_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 31,
        .top = 39,
        .right = 39,
        .bottom = 39,
        .script = TO_FAR_PTR_T(trigger_50_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 30,
        .top = 10,
        .right = 37,
        .bottom = 10,
        .script = TO_FAR_PTR_T(trigger_55_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 56,
        .top = 39,
        .right = 57,
        .bottom = 39,
        .script = TO_FAR_PTR_T(trigger_63_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .left = 2,
        .top = 39,
        .right = 4,
        .bottom = 39,
        .script = TO_FAR_PTR_T(trigger_64_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
