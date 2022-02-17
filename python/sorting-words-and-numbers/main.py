def sort():
    sorted_words = ([], [])
    for word in input().split():
        if word.isnumeric():
            sorted_words[1].append(word)
        else:
            sorted_words[0].append(word)
    print(sorted_words)


if __name__ == '__main__':
    while True:
        sort()
