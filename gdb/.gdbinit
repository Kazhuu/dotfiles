# Don't ask when restarting the application.
set confirm off
# Use pending breakpoints by default.
set breakpoint pending on

# Custom function to run pocl project and delete kernel cache to trigger kernel
# compilation again.
define pocl_run
    shell rm -rf $POCL_CACHE_DIR
    run
end

source ~/.local/bin/gdb_asm2cfg.py
#source ~/programming/asm2cfg/src/gdb_asm2cfg.py
