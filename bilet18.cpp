#include<fstream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
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
