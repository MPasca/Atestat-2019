#include<fstream>
using namespace std;
fstream fin("date14.in",ios::in), fout("date14.out",ios::out);
int main(){
    long long a,b;
    fin>>a>>b;
    fout<<a+b;
    fin.close();
    fout.close();
    return 0;
}
