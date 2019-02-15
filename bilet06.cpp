#include<fstream>
#include<iostream>
using namespace std;
fstream fin("date6.in",ios::in),fout("date6.out",ios::out);
int main(){
    int n,c=11,s=0,p=9,a=1;
    fin>>n;
    while(n-p>=0){
        s+=p*a;
        cout<<s<<" ";
        p*=10;
        a++;
        n-=p;
    }
    if(n!=0){
            cout<<"\n"<<s;
        s+=n*a;
    }
    fout<<s;
    fin.close();
    fout.close();
    return 0;
}
