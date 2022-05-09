ASDF_USE_DIR=$(cd "$(dirname "$0")" && pwd)

eval "${$(declare -f asdf)/asdf/__asdf_use_orig}"

asdf() {
    plugin="$1"

    if [ "$#" -gt 0 ]; then
        shift
    fi

    case "$plugin" in
        use)
            if [ "$2" = latest ]; then
                __asdf_use_orig shell "$@"
            else
                eval "$("$ASDF_USE_DIR/asdf-use-shell" "$@")"
            fi

            ;;

        *)
            __asdf_use_orig "$plugin" "$@"
            ;;
    esac
}
