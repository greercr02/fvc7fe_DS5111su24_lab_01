default:
	cat Makefile

# Task to download the books and save them in the "downloads" directory
get_texts:
	mkdir -p downloads
	wget https://www.gutenberg.org/cache/epub/17192/pg17192.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/2147/pg2147.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/2150/pg2150.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/2148/pg2148.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/932/pg932.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/1064/pg1064.txt -P downloads
        wget https://www.gutenberg.org/cache/epub/51060/pg51060.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/10947/pg10947.txt -P downloads
	wget https://www.gutenberg.org/cache/epub/1063/pg1063.txt -P downloads        

# Count lines in The Raven
raven_line_count:
	wc -l downloads/pg17192.txt

# Count words in The Raven
raven_word_count:
	wc -w downloads/pg17192.txt

# Count instances of "raven" in The Raven
raven_counts:
	# Count lines with "raven" (lowercase)
	grep -c "raven" downloads/pg17192.txt
	# Count lines with "Raven" (title case)
	grep -c "Raven" downloads/pg17192.txt
	# Count lines with "raven" (case-insensitive)
	grep -i -c "raven" downloads/pg17192.txt

# Count total lines in all downloaded files
total_lines:
	wc -l downloads/*.txt

# Count total words in all downloaded files
total_words:
	wc -w downloads/*.txt
