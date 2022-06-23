# menambahkan comma setelah 2 angka
def add_dot_separator(binary):
    if len(binary) <= 1:
        for all_values in range(len(binary)):
            new_value = list(binary[all_values])
        new_value.insert(2, '.')
        new_value = ''.join(new_value).split()
    elif len(binary) > 1:
        new_value = list(binary)
        new_value.insert(2, '.')
        new_value = ''.join(new_value).split()
    return new_value

# convert comma binary menjadi angka desimal
def convert_decimal(binary):
    decimal = ''
    positif = negatif = 0
    value = 0.0
    for i in range(len(binary)):
        decimal = binary[0]
    decimal = list(decimal)
    index_dot = decimal.index('.')
    size_dot = decimal.index('.')
    for i in range(len(decimal)):
        if i < index_dot:
            positif = positif + 1
            if decimal[i] == '1':
                value = value + pow(2, (size_dot - 1))
        elif i > index_dot:
            negatif = negatif + 1
            if decimal[i] == '1':
                value = value + pow(2, -negatif)
        size_dot -= 1
    return value