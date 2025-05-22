from typing import List, Dict, Tuple

def search_by_japanese(vocabulary: List[Dict], query: str) -> List[Dict]:
    results = []
    query = query.lower()
    
    for word in vocabulary:
        hiragana = word.get('히라가나', '')
        if query in hiragana:
            results.append(word)
    
    return results

def search_by_korean(vocabulary: List[Dict], query: str) -> List[Dict]:

    results = []
    query = query.lower()
    
    for word in vocabulary:
        meaning = word.get('뜻', '')
        if query in meaning:
            results.append(word)
    
    return results