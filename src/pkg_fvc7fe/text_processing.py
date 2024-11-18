import re

def clean_text(input_text: str) -> str:
    """Converts text to lowercase and removes punctuation."""
    cleaned_text = re.sub(r'[^\w\s]', '', input_text).lower()
    return cleaned_text

def tokenize(input_text: str) -> list:
    """Splits text into a list of words after cleaning it."""
    # Use clean_text to remove punctuation and convert to lowercase
    cleaned_text = clean_text(input_text)
    return cleaned_text.split()

def count_words(input_text: str) -> dict:
    """Counts occurrences of each word in the text."""
    words = tokenize(input_text)
    word_count = {}
    for word in words:
        word_count[word] = word_count.get(word, 0) + 1
    return word_count
