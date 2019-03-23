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
    long long n,x,p=1;
    int ok=0;
    fin>>n;
    x=n;
    ok=prim(x);
    while(ok==1 && x>10){
        p*=10;
        x/=10;
        if(x>2){
            ok=prim(x);
        }else if(x==2){
            ok=1;
        }else{
            ok=0;
        }
    }
    if(ok==1){
        fout<<"DA"<<"\n";
        while(p>1){
            fout<<n/p<<"\n";
            p/=10;
        }
        fin.close();
        fout.close();
        return 0;
    }
    fout<<"NU";
    fin.close();
    fout.close();
    return 0;
}
