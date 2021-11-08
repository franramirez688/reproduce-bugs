Conan non-SONAME example
=========================

This example is simulating the next graph:

```
'LibNoSoname' -> 'OtherLib' -> 'Executable'
```

Where:

* LibNoSoname == `nosoname/1.0`
* OtherLib == `libB/1.0`
* Executable == `app`

You can try it running (needs Conan installed):

```bash
$ ./build.sh
```

- Conan issue: https://github.com/conan-io/conan/issues/3230

