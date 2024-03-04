/* Find the maximum element in an array. */



class Krishna{
  public static void main (String[] args){
    int [] arr = {3,6,9,8,7,8};
    int max = arr[0]; //3
    for(int i =1; i < arr.length; i++){
      if(arr[i]>max) max = arr[i];
      //6>3 => max = 6
      //9>6 => max = 9
      //8>9 false
      //9 > 7 false
      //9 > 8 false

      //i > arr.length
      //for loop break
    }
    System.out.println(max);
  }
}

