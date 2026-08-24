#!/usr/bin/env bash
set -euo pipefail

# Build the bindings against the DuckDB 2.0 preview compatibility-locked runtime.
# DUCKDB_PREFIX must contain include/duckdb.h and lib/libduckdb.{so,dylib}.

prefix="${DUCKDB_PREFIX:?set DUCKDB_PREFIX to the custom DuckDB runtime}"
libdir="$prefix/lib"
includedir="$prefix/include"

test -f "$includedir/duckdb.h"
test -f "$libdir/libduckdb.so" || test -f "$libdir/libduckdb.dylib"

export CGO_ENABLED=1
export CGO_CFLAGS="-I$includedir ${CGO_CFLAGS:-}"
export CGO_LDFLAGS="-L$libdir -lduckdb ${CGO_LDFLAGS:-}"

go build -tags=duckdb_grain ./...
