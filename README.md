objcrange
=========

Number Ranges in Objective-C

See blog post at [bou.io/ObjectiveCNumberRanges.html](http://bou.io/ObjectiveCNumberRanges.html)

```
for (NSNumber * num in [@2 to:@4]) {
	// do something with num
}
```

Here, `[@2 to:@4]` is actually the same thing as `@[@2, @3, @4]`.
