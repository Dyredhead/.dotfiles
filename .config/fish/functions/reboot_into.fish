function reboot_into
    if test $argv[1] = "firmware"
        systemctl reboot --firmware-setup
    else
        if test $(string sub --start=-$(string length ".conf") $argv[1]) = ".conf" 
            systemctl reboot --boot-loader-entry  $argv[1]
        else
            systemctl reboot --boot-loader-entry $(string join '' $argv[1] ".conf")
        end
    end
end
