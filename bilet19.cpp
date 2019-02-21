#include<fstream>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
int x[21][21];
int main(){
    int n,s=0;
    fin>>n;
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++){
            fin>>x[i][j];
        }
    }
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++){
            if(i<j && i+j<=n && x[i][j]%2==1){
                s+=x[i][j];
            }
        }
    }
    fout<<s;
    fin.close();
    fout.close();
    return 0;
}
