function code {  
    cd $* && VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args "$PWD"
}