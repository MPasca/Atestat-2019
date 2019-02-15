#include<fstream>
using namespace std;
fstream fin("date3.in",ios::in), fout("date3.out",ios::out);
int main(){
    int n,p=1;
    double a,b,f;
    fin>>a>>b>>n;
    f=a/b;
    while(n>0){
        p*=10;
        n--;
    }
    f*=p;
    n=(int)f%p;
    fout<<n;
    fin.close();
    fout.close();
    return 0;
}
