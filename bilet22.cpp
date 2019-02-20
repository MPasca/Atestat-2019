#include<cmath>
#include<fstream>
using namespace std;
fstream fin("date22.in",ios::in),fout("date22.out",ios::out);
bool prim(int x){
    for(int d=2;d<=sqrt(x);d++){
        if(x%d==0){
            return false;
        }
    }
    return true;
}
int main(){
    int n,m;
    fin>>n>>m;
    n+=n%2;
    m-=n%2;
    for(int i=n+1;i<m;i+=2){
        if(prim(i)){
            fout<<i<<" ";
        }
    }
    fin.close();
    fout.close();
    return 0;
}
