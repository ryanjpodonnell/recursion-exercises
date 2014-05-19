int binary_search(int array[],int low,int high,int key)
{
    int mid = (high + low)/2;
    if (array[mid] == key)
    {
        printf("Key found at index %d \n",mid);
        return 1;
    }
    if(low<high)
    {
        if (array[mid] >key)
          return binary_search(array,low,mid,key);
      else 
          return binary_search(array,mid+1,high,key);
    }
    return 0;
}