import numpy as np
import matplotlib.pyplot as plt

a = 0
b = 2

trial_counts = [100, 500, 1000, 5000, 10000]
errors = []

def f(x):
    return np.exp(x)

# метод монте-карло
def monte_carlo_integration(a, b, N):
    # генерация случайных точек
    random_points_x = np.random.uniform(a, b, N)
    random_points_y = np.random.uniform(0, np.exp(b), N)

    # вычисление значений функции в случайных точках
    function_values = f(random_points_x)

    # подсчет точек под кривой
    below_curve = random_points_y <= function_values
    m = np.sum(below_curve)

    # площадь области
    S_rectangle = (b - a) * (np.exp(b) - 0)

    # вычисление площади под кривой
    integral = S_rectangle * m / N

    # оценка погрешности
    std_dev = np.std(below_curve)
    error = S_rectangle * std_dev / np.sqrt(N)

    return integral, error


# точное значение интеграла
exact_value = np.exp(2) - np.exp(0)
print(f"точное значение интеграла: {exact_value:.6f}")

# вычисление интеграла и погрешности
for N in trial_counts:
    estimated_value, error = monte_carlo_integration(a, b, N)
    errors.append(error)
    print(f"N = {N}, вычисленное значение интеграла: {estimated_value:.6f}, погрешность: {error:.6f}")

# график
plt.figure(figsize=(12, 6))
plt.plot(trial_counts, errors, label='Погрешность', marker='o')
plt.xlabel('Количество испытаний')
plt.ylabel('Погрешность')
plt.title('График зависимости погрешности результата от числа испытаний')
plt.legend()
plt.grid(True)
plt.show()

# итоговое значение
final_estimation = estimated_value
final_error = error

print("\nитоговое значение интеграла: {:.6f}".format(final_estimation))
print("оценка погрешности: {:.6f}".format(final_error))
