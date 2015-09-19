#!/usr/bin/env bats

load test_helper
source_file "contains"

@test "returns 0 if the item is in the given list for strings" {
  list=("this" "that" "to_find")

  run _contains list[@] "to_find"

  [ $status -eq 0 ]
}

@test "returns 0 if the item is in the given list for ints" {
  list=(1 2 399 9)

  run _contains list[@] 9

  [ $status -eq 0 ]
}

@test "returns 0 if the item is in the given list many times" {
  list=("this" "that" "to_find" "more" "to_find")

  run _contains list[@] "to_find"

  [ $status -eq 0 ]
}

@test "returns 1 if given an empty list" {
  empty_list=()

  run _contains empty_list[@] "to_find"

  [ $status -eq 1 ]
}

@test "returns 1 if the item is not in the given list" {
  unmatchable_list=("not_this" "or_this")

  run _contains unmatchable_list[@] "to_find"

  [ $status -eq 1 ]
}

