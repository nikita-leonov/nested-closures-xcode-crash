Sample to reproduce of Xcode Swift 1.2 related crash with non-void returns in nested closures.

Folling sample code crashs Swift compilation process:
```
func callbackable (callback: (() -> Void) -> Void) {
    callback() {}
}

func nestable (nested: () -> Void) -> String {
    return "value"
}


callbackable { callback in
    //let callback = callback //Uncomment this line
    nestable {
        callback()
    }
    //return //or this line to workaround an issue
}
```

It generates following exception:
```
Global is external, but doesn't have external or weak linkage!
i8* ()* @_TFF13NestableIssueU_FFT_T_T_auL_8callbackFT_T_
invalid linkage type for function declaration
i8* ()* @_TFF13NestableIssueU_FFT_T_T_auL_8callbackFT_T_
LLVM ERROR: Broken module found, compilation aborted!
```

The issue was raised couple of times by ReactiveCocoa and Quick users:
* https://github.com/ReactiveCocoa/ReactiveCocoa/issues/2106
* https://github.com/ReactiveCocoa/ReactiveCocoa/issues/2204
* https://github.com/Quick/Quick/issues/354

