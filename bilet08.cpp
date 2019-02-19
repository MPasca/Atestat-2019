#include<iostream>
using namespace std;
fstream fin("date8.in",ios::in),fout("date8.out",ios::out);
int main(){
    long long n;
    fin>>n;
    for(int i=0;i<n;i++){
        s=i;
        for(int j=i+1;j<=n;j++){
           s+=j;
           if(s==n){
                for(int c=i;c<=j;c++){
                    fout<<c<<" ";
                }
                fout<<"\n";
                break;
           }
           else if(s>n){
                break;
           }
        }
    }
}
