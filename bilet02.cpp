#include<fstream>
using namespace std;
fstream fin("date.in",ios::in), fout("date.out",ios::out);
int main(){
    int n;
    fin>>n;
    fout>>n%9; //proprietate
    fin.close();
    fout.close();
    return 0;
}
