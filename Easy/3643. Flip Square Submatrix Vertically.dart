class Solution{
  List<List<int>> reverseSubmatrix(List<List<int>> g,int x,int y,int k){
    for(int i=0;i<k~/2;i++){
      var tmp=g[x+i].sublist(y,y+k);
      for(int j=0;j<k;j++){
        g[x+i][y+j]=g[x+k-1-i][y+j];
        g[x+k-1-i][y+j]=tmp[j];
      }
    }
    return g;
  }
}