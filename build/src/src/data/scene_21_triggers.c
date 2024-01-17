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
        .x = 79,
        .y = 18,
        .width = 1,
        .height = 7,
        .script = TO_FAR_PTR_T(trigger_47_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 0,
        .y = 17,
        .width = 1,
        .height = 20,
        .script = TO_FAR_PTR_T(trigger_48_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 31,
        .y = 39,
        .width = 9,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_50_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 30,
        .y = 10,
        .width = 8,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_55_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 56,
        .y = 39,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_63_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .x = 2,
        .y = 39,
        .width = 3,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_64_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
