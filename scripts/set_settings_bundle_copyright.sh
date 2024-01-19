#!/bin/bash

# look for copyright
copyright_string=""
swiftformat_file=".swiftformat"
while read -r line; do
    if [[ $line = --header* ]]; then

        current_year=$(date +'%Y')
        copyright_string=$(echo | awk '{ sub(/.*Copyright/, "Copyright"); sub(/ All rights.*/, ""); print }' <<< $line)
        copyright_string=$(sed "s/{year}/$current_year/g" <<< "$copyright_string")
    fi
done <$swiftformat_file

if [ ! -z "$copyright_string" ]; then

    # replace copyright in Settings.bundle
    settings_bundles="ViewStateProject/Resources/SettingsBundles"
    replacement="\" = \""

    # find all Root.strings in all Settings.bundle's
    find $settings_bundles -name 'Root.strings' | sort -nr | while read file ; do
        while read -r line; do

            lowercase_line="$(echo $line | awk '{ printf tolower($0) }')"
            substring="\"copyright"

            # search for key "copyright" and make sure that "copyright..." doesn't already exist in value of the same key
            if [[ $line == "$substring\""* && $lowercase_line != *"\" = $substring"* ]]; then
                echo $(sed "s/$replacement/$replacement$copyright_string /g" <<< "$line")
            else
                echo "$line"
            fi
        done < $file > "$file.t"

        mv $file{.t,}
    done
fi
