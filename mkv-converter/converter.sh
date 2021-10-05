#!/bin/bash
for f in ./*.mkv; do
    import=$(echo ${f} | cut -c 3-)
    export=$(echo ${f} | sed 's/mkv/mp4/' | cut -c 3-)
    echo $import
    echo $export
    ffmpeg -i "${import}" -c copy -c:s mov_text "${export}"
done