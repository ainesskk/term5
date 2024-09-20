/*Задача 2. Дана строка. Преобразовать строку, заменив в ней все
        вопросительные знаки амперсантами.*/
#include <iostream>
#include <string>
using namespace std;

string replace(string str);

int main(){
    string str;
    cout<<"Enter string: ";
    cin>>str;
    cout<<replace(str);
    return 0;
}

string replace(string str){
    for(int i = 0; i < str.length(); i++){
        if(str[i] == '?')
            str[i]='&';
    }
    return str;
}
