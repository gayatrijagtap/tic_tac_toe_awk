#! /usr/bin/awk 

BEGIN {
  line="1 2 3 4 5 6 7 8 9"
  split(line,boxes," ")
  printf "Enter Player1 name:"
  getline p1name
  printf "Enter Player2 name:"
  getline p2name
  printf p1name" choose X/O:"
  getline player1
  if(player1=="X"){
    player2="O"
  }
  else{
    player2="X"
}

print p1name":"player1
print p2name":"player2

print "|"boxes[1]"|"boxes[2]"|"boxes[3]"|\n|"boxes[4]"|"boxes[5]"|"boxes[6]"|\n|"boxes[7]"|"boxes[8]"|"boxes[9]"|\n"

for(count=1;count<10;count++){
  if(count%2==0){
    print p2name"'s turn"
    printf "Enter box_number number:"
    getline box_number
    while(box_number<1 || box_number>9){
      print "Choose appropriate box_number!"
      printf "Enter box_number number:"
      getline box_number
    }
    boxes[box_number]=player2
  }
  else{
    print p1name"'s turn" 
  printf "Enter box_number number:"
  getline box_number
  while(box_number<1 || box_number>9){
    print "Choose appropreate box_number!"
    printf "Enter box_number number:"
    getline box_number
  }
  boxes[box_number]=player1
}
if(boxes[1]==boxes[2] && boxes[2]==boxes[3] || boxes[4]==boxes[5] && boxes[5]==boxes[6] || boxes[7]==boxes[8] && boxes[8]==boxes[9] || boxes[1]==boxes[4] && boxes[4]==boxes[7] || boxes[2]==boxes[5] && boxes[5]==boxes[8] || boxes[3]==boxes[6] && boxes[6]==boxes[9] || boxes[1]==boxes[5] && boxes[5]==boxes[9] || boxes[3]==boxes[5] && boxes[5]==boxes[7]){
  print "|"boxes[1]"|"boxes[2]"|"boxes[3]"|\n|"boxes[4]"|"boxes[5]"|"boxes[6]"|\n|"boxes[7]"|"boxes[8]"|"boxes[9]"|"
  if(count%2==0){
    print p2name" wins!"
    exit
  }
  else{
    print p1name" wins!"
  exit
}
}
else{
  print "|"boxes[1]"|"boxes[2]"|"boxes[3]"|\n|"boxes[4]"|"boxes[5]"|"boxes[6]"|\n|"boxes[7]"|"boxes[8]"|"boxes[9]"|"
}
}
print "Match Draw!!"
exit
}
