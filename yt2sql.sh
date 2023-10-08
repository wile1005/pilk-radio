#!/bin/bash

# Define the input file containing YouTube links
input_file="youtube_links.txt"

# Define the output SQL file
sql_file="sql.txt"

# Create the music directory if it doesn't exist
music_dir="./music"
mkdir -p "$music_dir"

# Iterate over each YouTube link in the input file
while IFS= read -r youtube_link; do

    # Extract video metadata
    title=$(yt-dlp --print title "$youtube_link")
    producer=$(yt-dlp --print uploader "$youtube_link")

    #Makes clean versions, to work with sql
    title_cleaned=$(echo "$title" | sed "s/'//g")
    producer_cleaned=$(echo "$producer" | sed "s/'//g")

    # Download audio
    yt-dlp --extract-audio --audio-format opus -o "$music_dir/$title_cleaned-$producer_cleaned.opus" "$youtube_link"

    producer_id=$(yt-dlp --print uploader_id "$youtube_link")
    producer_url="https://www.youtube.com/$producer_id"
    source_url="$youtube_link"
    music_path="$music_dir/$title_cleaned-$producer_cleaned.opus"
    length=$(ffprobe -i "$music_path" -show_entries format=duration -v quiet -of csv="p=0")

    # Write SQL INSERT command to the output SQL file
    echo "INSERT INTO music (title, producer, producer_url, source_url, music_path, length) VALUES ('$title_cleaned', '$producer_cleaned', '$producer_url', '$source_url', '$music_path', '$length');" >> "$sql_file"

done < "$input_file"

echo "SQL commands have been written to $sql_file"

