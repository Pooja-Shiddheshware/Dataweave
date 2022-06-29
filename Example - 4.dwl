%dw 2.0
output application/json
---
payload reduce ((item, accumulator = 100) -> item + accumulator)