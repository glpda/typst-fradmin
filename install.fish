#!/usr/bin/env fish

# Copy listed packages into local preview namespace.
# Does not check valid version or any submission guidelines.

if set -q XDG_DATA_HOME; and test -n "$XDG_DATA_HOME"
    set data_dir "$XDG_DATA_HOME"
else
    set data_dir "$HOME/.local/share"
end

set namespace "preview"

for package in $argv
    if test -f "$package/typst.toml"
        set -l name "framodel-$package"
        set -l _version (yq '.package.version'  "$package/typst.toml")
        set -l target "$data_dir/typst/packages/$namespace/$name/$_version"
        echo "copy $package/* into $target"
        mkdir -p $target
        for file in (git ls-files | string replace -f -r "^$package/" "")
            set -l dir (dirname $file)
            mkdir -p "$target/$dir"
            # echo "$package/$file" "->" (path normalize "$target/$dir/")
            cp "$package/$file"  "$target/$dir/"
        end
    else
        echo "$package/typst.toml does not exist!"
    end
end

