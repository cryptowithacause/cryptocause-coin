#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.cryptocausecore/cryptocaused.pid file instead
cryptocause_pid=$(<~/.cryptocausecore/testnet3/cryptocaused.pid)
sudo gdb -batch -ex "source debug.gdb" cryptocaused ${cryptocause_pid}
