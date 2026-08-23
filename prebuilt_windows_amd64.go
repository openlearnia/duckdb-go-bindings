//go:build !duckdb_use_lib && !duckdb_use_static_lib && !duckdb_grain && windows && amd64

package duckdb_go_bindings

import _ "github.com/openlearnia/duckdb-go-bindings/lib/windows-amd64"
