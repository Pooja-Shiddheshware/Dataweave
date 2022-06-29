%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> {
    (key): if(value == 1) 101 else value
})
