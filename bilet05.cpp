#include<fstream>
using namespace std;
fstream fin("date5.in",ios::in),fout("date5.out",ios::out);
int sumcif(int a){
    int sum=0;
    if(a/10==0){
        return a;
    }
    return sum+=a%10+sumcif(a/10);
}
int main(){
    int n;
    fin>>n;
    for(int m=n;m>=1;m--){
        if(m+sumcif(m)==n){
            fout<<"DA";
            fin.close();
            fout.close();
            return 0;
        }else if(m+sumcif(m)<n){
            break;
        }
    }
    fout<<"NU";
    fin.close();
    fout.close();
    return 0;
}
