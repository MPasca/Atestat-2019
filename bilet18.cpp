#include<fstream>
using namespace std;
fstream fin("date18.in",ios::in),fout("date18.out",ios::out);
int main(){
    int n,a=0,b=1,aux;
    fin>>n;
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++){
            fout<<b<<" ";
            aux=b;
            b+=a;
            a=aux;
        }
        fout<<"\n";
    }
    fin.close();
    fout.close();
    return 0;
}
