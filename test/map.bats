#!/usr/bin/env bats

load test_helper
source_file 'map'

@test "applies the passed function to each element of the array" {
  numbers=(1 2)

  add_one() {
    echo $(($1 + 1))
  }

  receiver=($(_map numbers[@] add_one))

  expected=(2 3)
  assert_array_equality expected[@]
}

