#include<iostream>
#include<math.h>
#include "Check.h"
using namespace std;
void check(int x1,int x2,int y1,int y2,int r1,int r2){
	int rast=sqrt(pow(x2-x1,2)+pow(y2-y1,2));
	int qwe=r1+r2;
	if(rast<qwe) cout<<"peresekautsa";
	else cout<<"ne peresekautsa";
	cout<<rast;
}
