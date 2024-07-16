# Documentation for DiffEqRxn


Link to Built Pages: https://andystopia.github.io/diffeqrxn-docs/


## Running sphinx

1. Have Nix.

2. Run: 

```bash
nix develop
make html
```

Done. Docs built.

Alternatively, for to autobuild on change in 
the current shell session run, instead of `make html`,
run: 

```bash
watchexec -w source/ -- make html
# you may want to do: watchexec -w source/ -- "rm -r build/ && make html'
```



