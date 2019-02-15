#include<fstream>
using namespace std;
fstream fin("date2.in",ios::in), fout("date2.out",ios::out);
int main(){
    int n,s=0;
    fin>>n;
    while(n>9){
        s+=n%10;
        n/=10;
        if(n<10){
            n+=s;
            s=0;
        }
    }
    fout<<n;
    fin.close();
    fout.close();
    return 0;
}
