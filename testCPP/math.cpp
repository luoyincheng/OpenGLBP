#include<iostream>
#include "math.h"

int plusDefinedSource(){
	return definedWindowWidth + definedWindowHeight;
}

int plusDefinedCopied(){
	int a = definedWindowWidth;
	int b = definedWindowHeight;
	return a + b;
}

int plusConstSource(){
	return windowWidth + windowHeight;
}