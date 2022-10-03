#include <iostream>
using namespace std;
int main() 
{
    int n1 = 1, n2 = 1;
    int high;
    cout << "Amount of numbers:" << endl;
    cin >> high;

    while (n2 <= high) {
        cout << n2 << endl;
        int temp = n1;
        n1 = n2;
        n2 = n1 + temp;
    }
    return 0;
}