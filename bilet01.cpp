#include<fstream>
using namespace std;
fstream fin("date.in",ios::in), fout("date.out",ios::out);
int x[11],y[11];
int main(){
    int n,s=0,p=1;
    fin>>n;
    for(int i=1;i<=n;i++){
        fin>>x[i]>>y[i];
        p*=y[i];
    }
    for(int i=1;i<=n;i++){
        s+=x[i]*p/y[i];
    }
    if(s>p){
        n=p;
    }
    else{
        n=s;
    }
    while(n>1){
        if(p%n==0 && s%n==0){
            p/=n;
            s/=n;
            n++;
        }
        n--;
    }
    fout<<s<<" "<<p;
    fin.close();
    fout.close();
    return 0;
}
