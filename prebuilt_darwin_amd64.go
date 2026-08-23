//go:build !duckdb_use_lib && !duckdb_use_static_lib && !duckdb_grain && darwin && amd64

package duckdb_go_bindings

import _ "github.com/openlearnia/duckdb-go-bindings/lib/darwin-amd64"
