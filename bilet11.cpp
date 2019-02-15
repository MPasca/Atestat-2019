#include<fstream>
using namespace std;
fstream fin("date11.in",ios::in), fout("date11.out",ios::out);
bool fibo(int x){
    int aux,a=1,b=0;
    while(a+b<x){
        aux=a;
        a=a+b;
        b=aux;
    }
    return a+b==x;
}
int main(){
    int n,x,c=0;
    fin>>n;
    while(n>0){
        fin>>x;
        if(fibo(x)){
            c++;
        }
        n--;
    }
    fout<<c;
    fin.close();
    fout.close();
    return 0;
}
