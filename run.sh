#!/bin/bash

TOOLDIR="/home/jin/iree-build/tools"
MODULEFILE="matmul.vmfb"

#INPUT1="2x2xf32=[[4,5][6,8]]"
#INPUT2="2x2xf32=[[1,4][3,2]]"
#INPUT3="2x2xf32=[[0,0][0,0]]"

#INPUT1="3x3xf32=[[1, 2, 3][2, 1, 4][3, 2, 1]]"
#INPUT2="3x3xf32=[[1, 2, 2][1, 1, 2][1, 4, 1]]"
#INPUT3="3x3xf32=[[0, 0, 0][0, 0, 0][0, 0, 0]]" # expected [[6, 16, 9][7, 21, 10][6, 12, 11]]

# incorrect
#INPUT1="2x3xf32=[[0.1, 0.2, 0.3][0.4, 0.5, 0.6]]"
#INPUT2="3x4xf32=[[4, 2, 1, 0.5][2, 2, 1, 2][1, 2, 1, 1]]"
#INPUT3="2x4xf32=[[0, 0, 0, 0][0, 0, 0, 0]]"  # expected [[1.1, 1.2, 0.6, 0.75][3.2, 3, 1.5, 1.8]]


${TOOLDIR}/iree-run-module --module=${MODULEFILE} --input=${INPUT1} --input=${INPUT2} --input=${INPUT3}


