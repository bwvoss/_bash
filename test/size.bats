#!/usr/bin/env bats

load test_helper
source_file "size"

@test "returns 0 for an empty list" {
  empty_list=()

  run _size empty_list[@]

  [ $output = 0 ]
}

@test "returns 1 for a list of 1" {
  list=(1)

  run _size list[@]

  [ $output = 1 ]

}

@test "returns 10 for a list of 10" {
  list=(1 2 3 4 5 6 7 8 9 10)

  run _size list[@]

  [ $output = 10 ]
}

