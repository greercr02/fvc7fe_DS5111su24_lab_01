#!/bin/bash
mkdir -p downloads
while read -r id; do
    wget "https://www.gutenberg.org/cache/epub/$id/pg$id.txt" -P downloads
done < book_ids.txt
