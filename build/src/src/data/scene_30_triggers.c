#pragma bank 255

// Scene: Scene 30
// Triggers

#include "gbs_types.h"
#include "data/trigger_73_interact.h"

BANKREF(scene_30_triggers)

const struct trigger_t scene_30_triggers[] = {
    {
        // Trigger 1,
        .x = 10,
        .y = 0,
        .width = 22,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_73_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
