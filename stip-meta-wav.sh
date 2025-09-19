for i in *.wav; do
    path="${i}"
    name="~${path%.*}.wav"

    ffmpeg -i "${path}" -map_metadata -1 -fflags +bitexact "${name}"
    mv -f "${name}" "${path}"
done
