List<int> qsort(List<int> list){
  
  
  var position=0,pivot=list[0];
  var length=list.length;
  var i,temp;
  //print(list);
  if(length<=1)
    return list;
  
  for(i=1;i<length;i++){
    if(list[i]<pivot){
        position++;
        temp=list[i];
        list[i]=list[position];
        list[position]=temp;
    }
  }
  //print("end $position");
  temp=list[0];
  list[0]=list[position];
  list[position]=temp;
  if(position!=0&&position!=length-1){
    list=qsort(list.sublist(0,position))+[list[position]]+qsort(list.sublist(position+1,length));
  }
  else{
    if(position==0)
      list=[list[position]]+qsort(list.sublist(position+1,length));
    else
      list=qsort(list.sublist(0,position))+[list[position]];
  }
    
  
  return list;
}
