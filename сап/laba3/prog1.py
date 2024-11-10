import numpy as np

def normalize_weights(matrix1, matrix2):
    result = np.dot(matrix2, matrix1)
    total = np.sum(result)
    if total != 0:
        normalized = result / total
    else:
        normalized = result
    return normalized

vector = np.array([0.4, 0.2, 0.3, 0.1])

matrix1 = np.array([
    [0.6, 0, 0.4, 0],
    [0, 0, 0, 1.0],
    [0.2, 0.7, 0.1, 0],
    [0.9, 0, 0, 0.1],
    [0.2, 0.4, 0.2, 0.2]
])

matrix2 = np.array([
    [0.5, 0, 0.1, 0, 0.4],
    [0, 0.5, 0.3, 0.2, 0],
    [0.6, 0, 0, 0.4, 0],
    [0, 0.4, 0.3, 0, 0.3]
])

matrix3 = np.array([
    [0.6, 0.2, 0, 0.2],
    [0.3, 0, 0.2, 0.5],
    [0, 0.5, 0.3, 0.2]
])

print("Вычисление весов для второго уровня:")
level2_weights = normalize_weights(vector, matrix1)
print(level2_weights)

print("\nВычисление весов для третьего уровня:")
level3_weights = normalize_weights(level2_weights, matrix2)
print(level3_weights)

print("\nВычисление весов для четвертого уровня:")
level4_weights = normalize_weights(level3_weights, matrix3)
print(level4_weights)