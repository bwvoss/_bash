```
_BASH
```
================

Enumerable functions for bash scripting

### Motivations

Bash is a great tool for many jobs.  I find myself using it most for server administration and workspace customizations.

As others have [noted](https://github.com/shellfire-dev/shellfire#why) shell scripting can be incredibly powerful, yet is commonly neglected in preference of higher level langauges.

When I started shell scripting, I found myself wanting to reach for many enumerable functions. This project is an attempt to help provide bash scripters with enumerable functions to be more productive right away, and have more fun developing readable  scripts.

Everybody has their own -- usually difficult to decipher -- flavor of how to implement a solution.  Want to know how the code should look see if an array contains an element?  Check out the difference in opinion and style in [this stackoverflow post](http://stackoverflow.com/questions/3685970/check-if-an-array-contains-a-value)

### Current Support (for arrays only)

##### contains

```
list=("this" "that" "to_find")

_contains list[@] "to_find"
=> 0

_contains list[@] "not here"
=> 1
```

##### size
```
list=()

_size list[@]
=> 0

populated_list=(1 2 3 4 5 6 7 8)
_size populated_list[@]
=> 8
```

### Installation

```
$ git clone
$ cd _BASH

#First argument is where to install the bin to
#Second argument is the dotfile you'd like it sourced from
$ ./install /usr/local/bin ~/.bash_profile
```

### Development

Collections (arrays and associative arrays):

- each
- map
- reduce
- find
- filter
- reject
- all
- any
- max
- min
- sort
- group

Array specific:

- first
- initial
- last
- rest
- compact
- flatten
- without
- union
- intersection
- difference
- uniq
- zip
- unzip
- index_of
- find_index
- range

All testing is done with [bats](https://github.com/sstephenson/bats), can be found in the test directory and can be run with the run_tests shell script or just ```bats <path-to-test-file>```.

