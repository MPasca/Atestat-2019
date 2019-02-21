#include<fstream>
#include<iostream>
#include<cmath>
using namespace std;
fstream fin("date.in",ios::in), fout("date.out",ios::out);
bool prim(int x){
    for(int d=2;d<=sqrt(x);d++){
        if(x%d==0){
            return false;
        }
    }
    return true;
}
int main(){
    long long n,a,b;
    fin>>n;
    if(prim(n)){
        fout<<n;
        fin.close();
        fout.close();
        return 0;
    }
    if(n%2==0){
        a=n+1;
        b=n-1;
    }
    while(prim(a)!=1 && prim(b)!=1){
        a+=1;
        b-=1;
    }
    if(prim(a)){
        fout<<a;
        fin.close();
        fout.close();
        return 0;
    }
    fout<<b;
    fin.close();
    fout.close();
    return 0;
}
