/*
 Задача 1. Дана целочисленная прямоугольная матрица. Определить
номер строки, в которой находится самая длинная серия нулевых элементов
 */

#include <iostream>
using namespace std;

int cntStr(int **a, int n, int m);

int main() {
    int n, m;
    int **a;
    cout << "Enter N*M: ";
    cin >> n >> m;
    a = new int *[n];
    for (int i = 0; i < n; i++)
        a[i] = new int[m];

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cout << "["<<i<<"]["<<j<<"] = ";
            cin>>a[i][j];
        }
    }

    cout<<cntStr(a, n, m);

    for (int i = 0; i < n; i++)
        delete[] a[i];
    delete[] a;
    return 0;
}

int cntStr(int **a, int n, int m){
    int max = 0, maxCur = 0, maxTmp = 0, maxStr = 0;
    for(int i = 0; i<n ; i++){
        maxTmp = 0;
        for(int j = 0; j<m-1 ; j++){
            if (a[i][j] == 0)
                maxTmp++;
            else {
                if (maxTmp > maxCur) {
                    maxCur = maxTmp;
                }
                maxTmp = 0;
            }
        }
        if (maxTmp > maxCur) {
            maxCur = maxTmp;
        }
        if (maxCur > max) {
            max = maxCur;
            maxStr = i;
        }
        maxCur = 0;
    }
    return maxStr;
}