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

