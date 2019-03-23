#include<fstream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
int v[101];
void sterge(int i,int &n){
    for(int c=i;c<n;c++){
        v[c]=v[c+1];
    }
    n--;
}
int main(){
    int n,x;
    fin>>n;
    for(int i=1;i<=n;i++){
        fin>>v[i];
    }
    for(int i=1;i<=n;i++){
        for(int j=i+1;j<=n;j++){
            if(v[i]==v[j]){
                sterge(j,n);
            }
        }
        fout<<v[i]<<" ";
    }
    fin.close();
    fout.close();
    return 0;
}
