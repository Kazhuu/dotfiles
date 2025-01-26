# Don't ask when restarting the application.
set confirm off
# Use pending breakpoints by default.
set breakpoint pending on

define make
    make -j
    run
end

define ninja
    shell ninja
    run
end

define cmake
    shell cmake --build build -j
    run
end

source ~/.local/bin/gdb_asm2cfg.py
#source ~/programming/asm2cfg/src/gdb_asm2cfg.py
