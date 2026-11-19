#include <iostream>
using namespace std;

int countDiv( int n, int d){
    if (d==0){
        return 0;
    }
    
    int count=0;
    return (n % d == 0 ? 1 : 0) + countDiv(n, d - 1);
}

bool isThree( int n){
    return countDiv(n, n)==3;
}

int main(){
    int n;
    cin>>n;
    cout<<isThree(n)<<endl;
    return 0;
}
