# LNURL Decoder

Decode a LNURL and get the URL.

```swift
let lnurl = "lnurl1dp68gurn8ghj7ampd3kx2ar0veekzar0wd5xjtnrdakj7tnhv4kxctttdehhwm30d3h82unvwqhhwetfwfjxzer4d36r2vcgxxmu8"
let url = try LNURLDecoder.decode(lnurl: lnurl)
print(url)
```
