#include<fstream>
using namespace std;
fstream fin("date23.in",ios::in),fout("date23.out",ios::out);
int putere(int n,int d){
    int cate=0;
    while(n%d==0){
        cate++;
        n/=d;
    }
    return cate;
}
int main(){
    int n,d=2,c;
    fin>>n;
    while(n>0){
        c=putere(n,d);
        if(c>0){
            fout<<"factorul "<<d<<" la puterea "<<c<<"\n";
            while(c>0){
                n/=d;
                c--;
            }
        }
        d++;
    }
    fin.close();
    fout.close();
    return 0;
}
