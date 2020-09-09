# Don't ask when restarting the application.
set confirm off

# Custom function to run pocl project and delete kernel cache to trigger kernel
# compilation again.
define pocl_run
    shell rm -rf $POCL_CACHE_DIR
    run
end
