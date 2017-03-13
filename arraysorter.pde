int width = 500;
int height = 500;

int array []= new int[width];

void setup(){

 size(500, 500);

for(int i=0; i<array.length; i++){
array[i]=(int)random(height);
}

noStroke();
}

void draw(){

background(100, 100, 100);

fill(100, 0, 0);

 //8. draw a rectangle for each int in your array.
 //   the x value will be the element of the int
 //   the y value will be your height variable
 //   the width is 1
 //   the height is negative the value of the int at that element in the array
for(int i=0; i<array.length; i++){
int x=array[i];
rect(i, height, 1, -x);
}
 //9. go through the array and swap any two values that are out of order
 //   Do a search for bubble sort for better clarification
for(int i=0; i<array.length-1; i++){
 if(array[i]>array[i+1]){
    int a = array[i];
    int b = array[i+1];
    array[i+1]=a;
    array[i] = b;
  }
}
 
 //10. reset the values of the array to a new random value
 //      whenever the mouse is clicked
 
 if(mousePressed){
   for(int i=0; i<array.length; i++){
array[i]=(int)random(height);
}
 }
 }

 //11. try using different sorting algorithms the see which ones are the fastest.


