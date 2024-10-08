/* Задача 3. Программа, которая считывает текст из файла и выводит на
экран только строки, содержащие четырехзначные числа.*/

#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main(){
    string str, line;
    cout<<"Enter file name: ";
    cin>>str;
    string filename = str + ".txt";
    ifstream fin(filename);
    if(!fin){
        cout<<"Error opening file";
        return 1;
    }
    bool lineFlag = false;
    while(getline(fin, line)){
        for(int i = 0; i<line.length()-2; i++){
            if (isdigit(line[i]) && isdigit(line[i + 1]) && isdigit(line[i + 2])) {
                if ((i == 0 || !isdigit(line[i - 1])) && (!isdigit(line[i + 3]) || line.length() == i + 3)){
                    cout << line << endl;
                    lineFlag = true;
                    break;
                }
            }
        }
    }
    if(!lineFlag) cout<<"No suitable lines";
    return 0;
}