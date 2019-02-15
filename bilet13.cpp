#include<fstream>
#include<climits>
using namespace std;
fstream fin("date13.in",ios::in), fout("date13.out",ios::out);
int main(){
    int n,x,minx=INT_MAX,c=0;
    fin>>n;
    while(n>0){
        fin>>x;
        if(x<minx){
            minx=x;
        }
        n--;
    }
    fin>>n;
    while(n>0){
        fin>>x;
        if(x<minx){
            c++;
        }
        n--;
    }
    fout<<c;
    fin.close();
    fout.close();
    return 0;
}
