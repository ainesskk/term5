#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main()
{
    int n = 0, cnt = 1;
    cin>>n;
    vector<int>l(n), r(n);
    for(int i = 0; i<n; i++) {
        cin >>l[i] >> r[i];
    }
    for(int i = 0; i < n-1; i++){
        for(int j = n-1; j > i; j--){
            if ((r[j] < r[j-1])) {
                swap(r[j], r[j - 1]);
                swap(l[j], l[j - 1]);
            }
        }
    }
    int m = 0;
    for(int i = 1; i<n; i++){
        if(!((l[i]<=r[m]))){
            m = i;
            cnt++;
        }
    }
    cout<<cnt;
    return 0;
}