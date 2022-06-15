#!/bin/bash

set -e
set -u

binary=$1

result="$(${binary} 3)"
echo "fib(3) = ${result}"
if [[ ${result} -ne 2 ]]
then
    echo "fib(3) expected 2 got ${result}"
    exit 1
fi 1>&2

result="$(${binary} 5)"
echo "fib(5) = ${result}"
if [[ ${result} -ne 5 ]]
then
    echo "fib(5) expected 5 got ${result}"
    exit 1
fi 1>&2

result="$(${binary} 7)"
echo "fib(7) = ${result}"
if [[ ${result} -ne 13 ]]
then
    echo "fib(7) expected 13 got ${result}"
    exit 1
fi 1>&2

result="$(${binary} 9)"
echo "fib(9) = ${result}"
if [[ ${result} -ne 34 ]]
then
    echo "fib(9) expected 34 got ${result}"
    exit 1
fi 1>&2

exit 0
