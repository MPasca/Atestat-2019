#include<fstream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
int x[101];
int main(){
    int n,ok=0,c=1,aux;
    fin>>n;
    for(int i=1;i<=n;i++){
        fin>>x[i];
    }
    while(ok==0 || c<=n){
        ok=1;
        for(int i=c+1;i<=n;i++){
            if(x[i]<x[c]){
                aux=x[c];
                x[c]=x[i];
                x[i]=aux;
                ok=0;
            }
        }
        if(ok==1){
            c++;
        }
    }
    for(int i=1;i<=n;i++){
        fout<<x[i]<<" ";
    }
    fin.close();
    fout.close();
    return 0;
}
