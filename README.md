Sample to reproduce of Xcode Swift 1.2 related crash with non-void returns in nested closures.

Sample code crashs Swift compilation process with a following exception:
```
Global is external, but doesn't have external or weak linkage!
i8* ()* @_TFF13NestableIssueU_FFT_T_T_auL_8callbackFT_T_
invalid linkage type for function declaration
i8* ()* @_TFF13NestableIssueU_FFT_T_T_auL_8callbackFT_T_
LLVM ERROR: Broken module found, compilation aborted!
```
