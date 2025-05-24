function clipboard
    switch $argv[1]
        case "copy"
            wl-copy $argv[2..]
        case "paste"
            wl-paste -n
    end
end
