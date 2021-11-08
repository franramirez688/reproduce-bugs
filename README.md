Conan non-SONAME example
=========================

This example is simulating the next graph:

```
'LibNoSoname' -> 'OtherLib' -> 'Executable'
```

Where:

* LibNoSoname == `nosoname/1.0`
* OtherLib == `libB/1.0`
* Executable == `nosoname/1.0`

- Issue related: https://github.com/conan-io/conan/issues/3230
- Howto: run `./build.sh` in your command prompt (needs Conan installed)
