#include<fstream>
using namespace std;
fstream fin("date6.in",ios::in), fout("date6.out",ios::out);
int main(){
    long long a,b,i=0,j=1,aux;
    fin>>a>>b;
    if(a>b){
        aux=a;
        a=b;
        b=aux;
    }
    while(i<a){
        aux=i;
        i+=j;
        j=aux;
    }
    if(b-a==j){
        fout<<"DA";
        fin.close();
        fout.close();
        return 0;
    }
    fout<<"NU";
    fin.close();
    fout.close();
}
