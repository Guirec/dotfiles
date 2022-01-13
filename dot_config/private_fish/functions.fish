function sudo --description="sudo wrapper to get the ability to add sudo to the last command"
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
