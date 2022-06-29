%dw 2.0
output application/json
---
payload map {
    ($.fieldName): $.fieldValue
} reduce ((item, accumulator = {} ) -> accumulator ++ item)
