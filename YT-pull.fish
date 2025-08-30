# yt-dlp functions

function ytdlp_best_video
    # Check if a URL is passed as an argument
    if test (count $argv) -eq 0
        echo "Please provide a URL."
        return 1
    end

    # Get the URL from arguments
    set url $argv[1]

    # Download the best format
    yt-dlp -f best $url
end

function ytdlp_best_audio
    # Check if a URL is passed as an argument
    if test (count $argv) -eq 0
        echo "Please provide a URL."
        return 1
    end

    # Get the URL from arguments
    set url $argv[1]

    # Download the best audio format
    yt-dlp -f bestaudio $url
end

function ytdlp_best_video_1080p
    # Check if a URL is passed as an argument
    if test (count $argv) -eq 0
        echo "Please provide a URL."
        return 1
    end

    # Get the URL from arguments
    set url $argv[1]

    # Download the best video format (max 1080p)
    yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]" $url
end

function ytdlp_best_video_720p
    # Check if a URL is passed as an argument
    if test (count $argv) -eq 0
        echo "Please provide a URL."
        return 1
    end

    # Get the URL from arguments
    set url $argv[1]

    # Download the best video format (max 720p)
    yt-dlp -f "bestvideo[height<=720]+bestaudio/best[height<=720]" $url
end

function ytdlp_show_formats
    # Check if a URL is passed as an argument
    if test (count $argv) -eq 0
        echo "Please provide a URL."
        return 1
    end

    # Get the URL from arguments
    set url $argv[1]

    # Run yt-dlp -F and display the available formats
    yt-dlp -F $url
end

###################################################################################
