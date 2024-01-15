#pragma bank 255

// Scene: Battle
// Triggers

#include "gbs_types.h"
#include "data/trigger_42_interact.h"
#include "data/trigger_45_interact.h"

BANKREF(scene_19_triggers)

const struct trigger_t scene_19_triggers[] = {
    {
        // FightyTrigger,
        .x = 3,
        .y = 14,
        .width = 1,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_42_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // RunTrigger,
        .x = 12,
        .y = 16,
        .width = 1,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_45_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
