#include<iostream>
#include<fstream>
#include<cstring>
using namespace std;
fstream fin("date.in",ios::in),fout("date.out",ios::out);
char cuv[25],aux[25];
int main(){
    fin>>cuv;
    for(int i=0;i<strlen(cuv);i++){
        if(cuv[i]!=cuv[i-1]){
            strcpy(aux,cuv);
            strcpy(aux+i,aux+i+1);
            fout<<aux<<"\n";
        }
    }
    fin.close();
    fout.close();
    return 0;
}
