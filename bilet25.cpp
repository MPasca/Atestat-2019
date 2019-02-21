#include<fstream>
#include<iostream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
int v[51];
int main(){
    int n,x,i,j,m;
    fin>>n;
    for(i=1;i<=n;i++){
        fin>>v[i];
    }
    fin>>x;
    i=1;
    m=(i+n)/2;
    do{
        if(x==v[i]){
            fout<<1;
            fin.close();
            fout.close();
            return 0;
        }
        if(x==v[n]){
            fout<<n;
            fin.close();
            fout.close();
            return 0;
        }
        if(x>v[m]){
            i=m;
            m=(i+n)/2;
        }else if(x<v[m]){
            n=m;
            m=(i+n)/2;
        }
        if(x==v[m]){
            fout<<m;
            fin.close();
            fout.close();
            return 0;
        }
    }while(i<n);
    fout<<0;
    fin.close();
    fout.close();
    return 0;
}
