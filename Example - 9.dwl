%dw 2.0
output application/json
---
payload map ($ mapObject ((value, key, index) -> {
    (value): key
}))