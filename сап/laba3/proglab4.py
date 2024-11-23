import numpy as np

# Матрица попарных сравнений для критериев
criteria_comparison = np.array([
    [1,    1/2,  1/5,  4,   1/5],
    [2,    1,    1/3,  5,   1/2],
    [5,    3,    1,    5,   2],
    [1/4,  1/5,  1/5,  1,   1/5],
    [5,    2,    1/2,  5,   1]
])

# Вычисление средних геометрических для каждого критерия
geometric_means = np.prod(criteria_comparison, axis=1) ** (1/criteria_comparison.shape[1])

# Нормализация средних геометрических
priority_vector = geometric_means / np.sum(geometric_means)

# Данные оборудования
alternatives = np.array([
    [1500, 90, 4, 3, 10],  # Оборудование A
    [1300, 80, 5, 2, 8],   # Оборудование B
    [1100, 95, 3, 3, 8]    # Оборудование C
])

# Составление матриц попарных сравнений для альтернатив
def comparison_matrix(data):
    size = data.shape[0]
    matrix = np.zeros((size, size))
    for i in range(size):
        for j in range(size):
            matrix[i, j] = data[i] / data[j]
    return matrix

matrices = {}
criteria = ["Стоимость", "Эффективность", "Надежность", "Гарантия", "Долговечность"]

for i in range(alternatives.shape[1]):
    matrices[criteria[i]] = comparison_matrix(alternatives[:, i])

# Вычисление приоритетов для каждой альтернативы
def calculate_priorities(matrix):
    geometric_means = np.prod(matrix, axis=1) ** (1 / matrix.shape[1])
    return geometric_means / np.sum(geometric_means)

alternative_priorities = {}
for key, matrix in matrices.items():
    alternative_priorities[key] = calculate_priorities(matrix)

# Вектор приоритетов для критериев уровня 2
criteria_priorities = np.array([3.13, 0.63, 0.76, 0.48, 1.4]) / 6.4

# Вектор приоритетов для альтернатив уровня 3
alternative_matrix = np.array([
    alternative_priorities["Стоимость"],
    alternative_priorities["Эффективность"],
    alternative_priorities["Надежность"],
    alternative_priorities["Гарантия"],
    alternative_priorities["Долговечность"]
]).T

# Расчет итоговых оценок для альтернатив
final_scores = np.dot(alternative_matrix, criteria_priorities)

# Вывод итоговых оценок
print("Итоговые оценки оборудования:")
for i, score in enumerate(final_scores):
    print(f"Оборудование {chr(65+i)}: {score:.3f}")
