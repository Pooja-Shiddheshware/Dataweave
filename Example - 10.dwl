%dw 2.0
output application/json
fun mapEmiData(data) = if(!isEmpty(filterData(data))) filterData(data)
else []

fun filterData(item) = (item map(item) -> item - "loanId" - "chargeOutstanding" - "chargeUpdatedDate" mapObject ((value, key) -> {
    ((key): value) if (value != null)
})) filter (!isEmpty($))
---
payload groupBy $.loanId pluck (parentItem) -> {
    "loanId": parentItem.loanId[0],
    "chargeOutstanding": parentItem.chargeOutstanding[0],
    "chargeUpdatedDate": parentItem.chargeUpdatedDate[0],
    "emiData": filterData(parentItem)
}