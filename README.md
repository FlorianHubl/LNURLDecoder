# LNURL Decoder

Decode a LNURL and get the URL.

```swift
    let input = "Bitcoin fixes this"
    let lnurl = try LNURLDecoder.encode(url: input)
    print(lnurl)
    let output = try LNURLDecoder.decode(lnurl: lnurl)
    print(output)
```
