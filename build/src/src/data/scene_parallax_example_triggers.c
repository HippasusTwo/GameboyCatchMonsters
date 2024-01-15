#pragma bank 255

// Scene: Parallax Example
// Triggers

#include "gbs_types.h"
#include "data/trigger_40_interact.h"

BANKREF(scene_parallax_example_triggers)

const struct trigger_t scene_parallax_example_triggers[] = {
    {
        // Trigger 1,
        .x = 79,
        .y = 12,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_40_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
