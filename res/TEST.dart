
int myPow(int x,int y){
  int tmp = 1;
  for (var i = 0; i < y; i++) {
    tmp *= x;
  }
  return tmp;
}