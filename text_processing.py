import re
import logging

# Configure logging
logging.basicConfig(level=logging.DEBUG, format="%(asctime)s - %(levelname)s - %(message)s")

def clean_text(text: str) -> str:
        """
    Converts text to lowercase and removes punctuation.

    Args:
        input_text (str): The string to be cleaned.

    Returns:
        str: Cleaned string in lowercase with punctuation removed.
    """
    assert isinstance(text, str), "Input must be a string."
    # Remove punctuation and convert to lowercase
    cleaned_text = re.sub(r'[^\w\s]', '', text).lower()
    logging.debug("Text cleaned of punctuation and converted to lowercase.")
    return cleaned_text

def tokenize(text: str) -> list:
    """Splits text into a list of words (tokens).
    Args:
        input_text (str): The string to be tokenized.

    Returns:
        list: List of words in the text.

	"""
    assert isinstance(text, str), "Input must be a string."
    tokens = text.split()
    logging.debug("Text tokenized into a list of words.")
    return tokens

def count_words(text: str) -> dict:
    """Counts occurrences of each word in the text.
 	Args:
        	input_text (str): The string in which to count word occurrences.

    	Returns:
        	dict: Dictionary with words as keys and their counts as values.

		"""
    assert isinstance(text, str), "Input must be a string."
    words = tokenize(clean_text(text))
    word_count = {}
    for word in words:
        word_count[word] = word_count.get(word, 0) + 1
    logging.debug("Word count dictionary created.")
    return word_count
