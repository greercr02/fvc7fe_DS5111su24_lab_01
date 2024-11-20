# DS5111 Lab 1: Testing Word Processors
This project is part of the DS5111 Data Engineering course and focuses on testing Python functions for text processing. The lab includes three main functions:
- `clean_text`: Cleans text by converting it to lowercase and removing punctuation.
- `tokenize`: Splits text into individual words.
- `count_words`: Counts occurrences of each word in a text.

The functions were tested using files from Project Gutenberg, including works by Edgar Allan Poe and a French version of "The Raven."
## Features
- Automated text processing functions: cleaning, tokenizing, and word counting.
- Unit tests for each function using Pytest.
- Parametrized tests for multiple files, combined files, and multilingual text.
- Automated file downloading with a `Makefile`.

