#!/bin/bash

cd ~/SaGe-Browser-Fuzzer

#export ASAN_OPTIONS=detect_invalid_alignment=0
export ASAN_OPTIONS="allocator_may_return_null=1 coverage=1"

export LD_LIBRARY_PATH="/home/ubuntu/SaGe-Browser-Fuzzer/webkitgtk-2.47.3/build/lib"
#export NO_XVFB=true
export SAGE_PATH="/home/ubuntu/SaGe-Browser-Fuzzer"
export COLLECT_TREE_INFO=true
export USE_INVALID_TREE=true
export PRINT_TIME=true
export INVALID_TREE_PATH="$SAGE_PATH/invalid_tree/invalid_tree.pickle"
export RULE_INFO_PATH="$SAGE_PATH/invalid_tree/global_info.pickle"

export WEBKIT_BINARY_PATH="/home/ubuntu/SaGe-Browser-Fuzzer/webkitgtk-2.47.3/build/bin/MiniBrowser"
export WEBKIT_WEBDRIVER_PATH="/home/ubuntu/SaGe-Browser-Fuzzer/webkitgtk-2.47.3/build/bin/WebKitWebDriver"

cd $SAGE_PATH
./sage_launcher.sh --fuzzer sage --webkitgtk 64 --timerpurge 10
