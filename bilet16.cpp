#include<fstream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
int v[101],nr[101];
int main(){
    int n,x,ap=0,apmax=0,c;
    fin>>n;
    for(int i=1;i<=n;i++){
        fin>>v[i];
    }
    for(int i=1;i<n;i++){
        ap=1;
        for(int j=i+1;j<=n;j++){
            if(v[i]==v[j]){
                ap++;
            }
        }
        if(ap>apmax){
            c=1;
            apmax=ap;
            nr[c]=v[i];
        }
        else if(ap==apmax){
            c++;
            nr[c]=v[i];
        }
        ap=0;
    }
    for(int i=1;i<=c;i++){
        fout<<nr[i]<<" ";
    }
    fin.close();
    fout.close();
    return 0;
}
