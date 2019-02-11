#include<fstream>
#include<cmath>
using namespace std;
fstream fout("date4.out",ios::out);
bool prim(int a){
    int ok=1;
    for(int d=2;d<=sqrt(a);d++){
        if(a%d==0){
            ok=0;
            break;
        }
    }
    return ok;
}
int og(int a){
    int x=0;
    while(a>0){
        x=x*10+a%10;
        a/=10;
    }
    return x;
}
int main(){
    for(int x=101;x<=997;x+=2){
        if(prim(x) && prim(og(x))){
            fout<<x<<"\n";
        }
    }
    fout.close();
    return 0;
}
