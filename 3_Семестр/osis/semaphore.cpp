#include <iostream>
#include <windows.h>
#include <process.h>
#include <math.h>
using namespace std;

const int N_BUF = 9;
const int N = 450;
int buffer[N_BUF];
int sz = 0; // запись в буфер
int start = 0; // чтение из буфера
int deep = 0, maxdeep = 0;

HANDLE empty; // для свободных элементов в буфере
HANDLE filled; // для занятых элементов в буфере

DWORD WINAPI buf_in(LPVOID) {
    for (int i = 1; i <= N; i++) {
        WaitForSingleObject(empty, INFINITE); // -1 свободный слот
		
        buffer[sz] = i;
        deep = abs(sz - start) + 1;
        sz = (sz + 1) % N_BUF;
		if (deep > maxdeep) maxdeep = deep;
		
        ReleaseSemaphore(filled, 1, NULL); // +1 занятый слот
    }
    return 0;
}

DWORD WINAPI buf_out(LPVOID) {
    for (int i = 0; i < N; i++) {
        WaitForSingleObject(filled, INFINITE); // -1 занятый слот

        int num = buffer[start];
        start = (start + 1) % N_BUF;
        cout << num << " ";
        
        ReleaseSemaphore(empty, 1, NULL); // +1 свободный слот
    }
    return 0;
}

int main() {
    empty = CreateSemaphore(NULL, N_BUF, N_BUF, NULL);
    filled = CreateSemaphore(NULL, 0, N_BUF, NULL);

    HANDLE buffin = CreateThread(NULL, 0, buf_in, 0, CREATE_SUSPENDED, NULL);
    HANDLE buffout = CreateThread(NULL, 0, buf_out, 0, CREATE_SUSPENDED, NULL);
    
    
    SetThreadPriority(buffin, THREAD_PRIORITY_ABOVE_NORMAL);
    SetThreadPriority(buffout, THREAD_PRIORITY_LOWEST);
    
    ResumeThread(buffin);
    ResumeThread(buffout);
 
    WaitForSingleObject(buffin, INFINITE);
    WaitForSingleObject(buffout, INFINITE);
    
    printf("\nmax deep = %d\n", maxdeep);
    
    CloseHandle(empty);
    CloseHandle(filled);

    return 0;
}