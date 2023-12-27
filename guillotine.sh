# Checks if gtk theme dir exists and adds it otherwise
tmpdir="$HOME/.config/gtk-3.0"
[ -d $tmpdir ] || mkdir -p $tmpdir
[ -f $tmpdir/gtk.css ] || :>$tmpdir/gtk.css

# Downloads the required css and appends it to the correct file
wget \
    https://raw.githubusercontent.com/safesintesi/terminal-guillotine/main/gtk.css \
    -qO- >> $tmpdir/gtk.css

