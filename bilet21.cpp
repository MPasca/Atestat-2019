#include<fstream>
#include<bitset>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
bitset<10>ap;
int main(){
    int n;
    fin>>n;
    while(n>0){
        ap[n%10]=1;
        n/=10;
    }
    for(int i=9;i>=0;i--){
        if(ap[i]>0){
            n=n*10+i;
        }
    }
    fout<<n;
    fin.close();
    fout.close();
    return 0;
}
