SB_DATA_DIR=${SB_DATA_DIR:-${XDG_DATA_HOME:-~/.local/share}/split-browser}
SB_LOGIN_DIR=${SB_LOGIN_DIR:-$SB_DATA_DIR/logins}
SB_BOOKMARK_FILE=${SB_BOOKMARK_FILE:-$SB_DATA_DIR/bookmarks.tsv}

SB_LOGIN_SECURITY_DELAY_SECONDS=1
SB_BOOKMARK_PRETTY_DATE_LEN=19  # with time zone: 25
SB_BOOKMARK_PRETTY_TITLE_LEN=70
SB_ELLIPSIS=$'\u2026'
SB_STAR=$'\u2605'

sb_pwgen() {
    pwgen -s 64 1
}

sb_dmenu() {
    _NET_WM_NAME="Split Browser - $SB_SCREEN" \
    x11-unoverride-redirect stdbuf -oL dmenu "$@"
}
