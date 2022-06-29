%dw 2.0
output application/json
import * from dw::core::Strings
---
reverse(payload.message)