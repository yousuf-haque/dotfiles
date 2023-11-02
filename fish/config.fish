if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Editor
set -gx EDITOR nvim

# Starship
starship init fish | source

# zellij
# if set -q ZELLIJ
# else
#   zellij
# end

# Sdkman 
function sdk
    bash -c "source '$HOME/.sdkman/bin/sdkman-init.sh'; sdk $argv[1..]"
end
# nvm
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
fish_add_path (find $HOME/.sdkman/candidates/*/current/bin -maxdepth 0)
# fish_add_path /opt/local/lib/ruby3.2/gems/3.2.0/gems/*/bin
set -gx GEM_HOME $HOME/.gem
set -gx GEM_PATH $HOME/.gem
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk17/Contents/Home
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx ANDROID_SDK_ROOT $ANDROID_HOME
fish_add_path $ANDROID_HOME/emulator/
fish_add_path $ANDROID_HOME/platform-tools/
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin/
fish_add_path $HOME/.maestro/bin
fish_add_path $GEM_HOME/bin


# Opus env values
set -gx FLASHLIGHT_API_KEY fl_af9d8d392daa3b66bc6fcd79b7cf1032
