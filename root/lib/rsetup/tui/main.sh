source "$ROOT_PATH/lib/rsetup/mod/tui.sh"

source "$ROOT_PATH/lib/rsetup/tui/software/software.sh"
source "$ROOT_PATH/lib/rsetup/tui/hardware/hardware.sh"
source "$ROOT_PATH/lib/rsetup/tui/test/test.sh"

__main_about() {
    msgbox "rsetup\n\nCopyright $(date +%Y) Radxa Ltd."
    
    unregister_screen
}

__main() {
    menu_init
    menu_add __main_software "Software"
    menu_add __main_hardware "Hardware"
    menu_add __main_test "Test"
    menu_add __main_about "About"
    menu_show "Please select an option below:"
}