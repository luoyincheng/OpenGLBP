#include <iostream>
#include "math.h"
using namespace std;

int main(){
	int definedSourcePlus = plusDefinedSource();
	int definedCopiedPlus = plusDefinedCopied();
	int constSourcePlus = plusConstSource();
	cout << "definedSourcePlus:" << definedSourcePlus << endl;
	cout << "definedCopiedPlus:" << definedCopiedPlus << endl;
	cout << "constSourcePlus:" << constSourcePlus << endl;

	cout << "definedWindowWidth:" << definedWindowWidth << endl;
}