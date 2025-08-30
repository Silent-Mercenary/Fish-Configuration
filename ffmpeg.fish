##############################################################
## This First Section is only to be used with a SINGLE FILE ##
##############################################################

function ffmpeg-flac
    set input_file $argv[1]
    set base_name (path basename -E "$input_file")
    ffmpeg -i "$input_file" -acodec flac -compression_level 12 "$base_name.flac"
end

# Opus Conversion Function (Max Quality - 512k bitrate)
function ffmpeg-opus
    set input_file $argv[1]
    set base_name (path basename -E "$input_file")
    ffmpeg -i "$input_file" -c:a libopus -b:a 512k "$base_name.opus"
end

function ffmpeg-ogg
    set input_file $argv[1]
    set base_name (path basename -E "$input_file")
    ffmpeg -i "$input_file" -acodec libvorbis -q:a 10 "$base_name.ogg"
end

# MP4 Video Conversion Function using libx264 (H.264 + AAC)
function ffmpeg-mp4-x264
    for input_file in $argv
        set base_name (path basename -E "$input_file")
        ffmpeg -i "$input_file" -c:v libx264 -crf 18 -preset slow -c:a aac -b:a 320k "$base_name.mp4"
    end
end

# MKV Video Conversion Function using libx264 (H.264 + AAC)
function ffmpeg-mkv-x264
    for input_file in $argv
        set base_name (path basename -E "$input_file")
        ffmpeg -i "$input_file" -c:v libx264 -crf 18 -preset slow -c:a aac -b:a 320k "$base_name.mkv"
    end
end

###########################
## Directory wide FFMPEG ##
###########################

# Convert to FLAC
function ffmpeg-flac-dir
    for input_file in *
        if test -f "$input_file" -a (string match -v '*.flac' $input_file)
            set base_name (path basename -E "$input_file")
            set out_file "$base_name.flac"
            if test -f "$out_file"
                echo "Skipping existing: $out_file"
                continue
            end
            ffmpeg -i "$input_file" -acodec flac -compression_level 12 "$out_file"
        end
    end
end

# Convert to OPUS
function ffmpeg-opus-dir
    for input_file in *
        if test -f "$input_file" -a (string match -v '*.opus' $input_file)
            set base_name (path basename -E "$input_file")
            set out_file "$base_name.opus"
            if test -f "$out_file"
                echo "Skipping existing: $out_file"
                continue
            end
            ffmpeg -i "$input_file" -c:a libopus -b:a 512k "$out_file"
        end
    end
end

# Convert to OGG
function ffmpeg-ogg-dir
    for input_file in *
        if test -f "$input_file" -a (string match -v '*.ogg' $input_file)
            set base_name (path basename -E "$input_file")
            set out_file "$base_name.ogg"
            if test -f "$out_file"
                echo "Skipping existing: $out_file"
                continue
            end
            ffmpeg -i "$input_file" -acodec libvorbis -q:a 10 "$out_file"
        end
    end
end

# Convert to MP4 (x264)
function ffmpeg-mp4-dir-x264
    for input_file in *
        if test -f "$input_file" -a (string match -v '*.mp4' $input_file)
            set base_name (path basename -E "$input_file")
            set out_file "$base_name.mp4"
            if test -f "$out_file"
                echo "Skipping existing: $out_file"
                continue
            end
            ffmpeg -i "$input_file" -c:v libx264 -crf 18 -preset slow -c:a aac -b:a 320k "$out_file"
        end
    end
end

# Convert to WebM
function ffmpeg-webm-dir
    for input_file in *
        if test -f "$input_file" -a (string match -v '*.webm' $input_file)
            set base_name (path basename -E "$input_file")
            set out_file "$base_name.webm"
            if test -f "$out_file"
                echo "Skipping existing: $out_file"
                continue
            end
            ffmpeg -i "$input_file" -c:v vp8 -b:v 2M -c:a libvorbis -q:a 10 "$out_file"
        end
    end
end

# Convert to MKV (x264)
function ffmpeg-mkv-dir-x264
    for input_file in *
        if test -f "$input_file" -a (string match -v '*.mkv' $input_file)
            set base_name (path basename -E "$input_file")
            set out_file "$base_name.mkv"
            if test -f "$out_file"
                echo "Skipping existing: $out_file"
                continue
            end
            ffmpeg -i "$input_file" -c:v libx264 -crf 18 -preset slow -c:a aac -b:a 320k "$out_file"
        end
    end
end


###############################
## NVENC Video Conversion ##
###############################

# MP4 Video Conversion Function using NVENC (H.264 + AAC)
function ffmpeg-mp4-nvenc
    for input_file in $argv
        set base_name (path basename -E "$input_file")
        ffmpeg -i "$input_file" -c:v h264_nvenc -preset p4 -cq 23 -c:a aac -b:a 320k "$base_name.mp4"
    end
end

# MKV Video Conversion Function using NVENC (H.264 + AAC)
function ffmpeg-mkv-nvenc
    for input_file in $argv
        set base_name (path basename -E "$input_file")
        ffmpeg -i "$input_file" -c:v h264_nvenc -preset p4 -cq 23 -c:a aac -b:a 320k "$base_name.mkv"
    end
end

###############################
## Directory wide NVENC FFMPEG ##
###############################

# to MP4 using NVENC
function ffmpeg-mp4-dir-nvenc
    for input_file in *
        if test -f "$input_file"
            set base_name (path basename -E "$input_file")
            ffmpeg -i "$input_file" -c:v h264_nvenc -preset p4 -cq 23 -c:a aac -b:a 320k "$base_name.mp4"
        end
    end
end

# to MKV using NVENC
function ffmpeg-mkv-dir-nvenc
    for input_file in *
        if test -f "$input_file"
            set base_name (path basename -E "$input_file")
            ffmpeg -i "$input_file" -c:v h264_nvenc -preset p4 -cq 23 -c:a aac -b:a 320k "$base_name.mkv"
        end
    end
end
