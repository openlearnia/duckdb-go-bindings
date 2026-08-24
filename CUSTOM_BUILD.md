# Grain DuckDB 2.0 preview build

This fork preserves the upstream Go C-API wrappers while adding the
`duckdb_grain` build tag. The checked-in `include/duckdb.h` is generated from
the OpenLearnia DuckDB `v2.0.0-alpha38615` preview fork. The tag excludes
DuckDB's prebuilt platform library packages and links the bindings to the
compatibility-locked runtime selected by the caller.

The runtime must provide `include/duckdb.h` and `lib/libduckdb.so` (Linux) or
`lib/libduckdb.dylib` (macOS). Build with:

```sh
DUCKDB_PREFIX=/path/to/duckdb-runtime ./scripts/build-grain.sh
```

The matching DuckLake extension remains a loadable extension and must be
loaded by the application after opening the database.
