import numpy as np
import networkx as nx
import matplotlib.pyplot as plt

# Входные данные
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

# Функция для создания графа на основе матриц
def create_graph(matrix):
    G = nx.DiGraph()  # Создаем ориентированный граф
    rows, cols = matrix.shape
    for i in range(rows):
        for j in range(cols):
            if matrix[i, j] != 0:
                G.add_edge(i, j, weight=matrix[i, j])
    return G

# Создаем графы
G1 = create_graph(matrix1)
G2 = create_graph(matrix2)
G3 = create_graph(matrix3)

# Рисуем графы
pos = nx.spring_layout(G1)  # Определяем позиционирование для узлов
plt.figure(figsize=(12, 8))

plt.subplot(131)
nx.draw(G1, pos, with_labels=True, node_size=700, node_color='lightblue', font_size=10, font_weight='bold')
labels = nx.get_edge_attributes(G1, 'weight')
nx.draw_networkx_edge_labels(G1, pos, edge_labels=labels)
plt.title("Matrix 1 Graph")

plt.subplot(132)
nx.draw(G2, pos, with_labels=True, node_size=700, node_color='lightgreen', font_size=10, font_weight='bold')
labels = nx.get_edge_attributes(G2, 'weight')
nx.draw_networkx_edge_labels(G2, pos, edge_labels=labels)
plt.title("Matrix 2 Graph")

plt.subplot(133)
nx.draw(G3, pos, with_labels=True, node_size=700, node_color='lightcoral', font_size=10, font_weight='bold')
labels = nx.get_edge_attributes(G3, 'weight')
nx.draw_networkx_edge_labels(G3, pos, edge_labels=labels)
