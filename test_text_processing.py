from text_processing import clean_text, tokenize, count_words

def test_clean_text():
    # Test clean_text with valid input
    text = "Hello, World!"
    expected_output = "hello world"
    assert clean_text(text) == expected_output
    assert isinstance(clean_text(text), str)

def test_tokenize():
    # Test tokenize with valid input
    text = "hello world"
    expected_output = ["hello", "world"]
    assert tokenize(text) == expected_output
    assert isinstance(tokenize(text), list)

def test_count_words():
    # Test count_words with valid input
    text = "hello world hello"
    expected_output = {"hello": 2, "world": 1}
    assert count_words(text) == expected_output
    assert isinstance(count_words(text), dict)

