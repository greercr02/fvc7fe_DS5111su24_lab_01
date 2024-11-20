# DS5111 Lab: Text Processing with Python

This repository contains code and resources developed for the DS5111 Data Engineering course labs. The labs focus on building, automating, and testing Python-based text processing utilities. The three main labs include:

1. Automating file downloads and basic text processing (Week 2)
2. Implementing core functions for text processing (Week 3)
3. Writing unit tests and refining functionality (Week 4)

---

## Lab Structure and Objectives

### Week 2: Automating Downloads with a Makefile
- Automated the download of text files from [Project Gutenberg](https://www.gutenberg.org) using a `Makefile`.
- Created a script to loop through book IDs and download corresponding `.txt` files.
- Used Linux tools (`wc`, `grep`) to calculate:
  - Line counts
  - Word counts
  - Specific word occurrences (case-sensitive and insensitive)

### Week 3: Implementing Core Functions
- Developed three Python functions for text processing:
  1. `clean_text`: Cleans text by removing punctuation and converting to lowercase.
  2. `tokenize`: Splits text into individual words.
  3. `count_words`: Counts occurrences of each word in a text.

### Week 4: Writing and Running Tests
- Formalized expectations of the functions using `pytest`.
- Created parametrized tests for:
  - Individual text files.
  - Combined English files.
  - A French file (`Le Corbeau`) to test accented characters.
- Verified functionality across different input scenarios.

---

## Features

- **Automated Downloads**: Uses a `Makefile` to download files based on Project Gutenberg book IDs.
- **Text Processing Functions**: Python utilities for cleaning, tokenizing, and counting words in text data.
- **Unit Testing**: Comprehensive tests using Pytest to validate functionality.
- **Multilingual Support**: Includes tests for accented characters in non-English text.

## Project Gutenberg Files

The project uses the following files from Project Gutenberg:

1. **The Raven** (`pg17192.txt`)
2. **Fall of the House of Usher** (`pg932.txt`)
3. **Cask of Amontillado** (`pg1063.txt`)
4. **The Poems** (`pg10031.txt`)
5. **Le Corbeau (French)** (`pg14082.txt`)
