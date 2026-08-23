//go:build !duckdb_use_lib && !duckdb_use_static_lib && !duckdb_grain && darwin && arm64

package duckdb_go_bindings

import _ "github.com/openlearnia/duckdb-go-bindings/lib/darwin-arm64"
