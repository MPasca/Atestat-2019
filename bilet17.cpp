#include<fstream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
int v[101],w[101];
int main(){
    int n;
    fin>>n;
    for(int i=1;i<=n;i++){
        fin>>v[i];
    }
    for(int i=1;i<=n;i++){
        w[i]=1;
        for(int j=1;j<=n;j++){
            if(i!=j && v[i]==v[j]){
                w[i]++;
            }
        }
        fout<<v[i]<<" ";
    }
    fout<<"\n";
    for(int i=1;i<=n;i++){
        fout<<w[i]<<" ";
    }
    fin.close();
    fout.close();
    return 0;
}
