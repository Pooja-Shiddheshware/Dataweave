%dw 2.0
output application/json
---
payload filter (($ mod 2) == 0)