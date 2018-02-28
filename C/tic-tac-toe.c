/*
	Author: NerdOfCode
	Purpose: Play a simple tic tac toe game with two players!
	Updated: 2/26/18
*/

#include <stdio.h>
#include <stdlib.h>

#define S_BOARD 3
//Basically set max checks for winner... Improves efficiency
#define CHECK_COUNT 4

//char board[3][3] = {{0,0,0},{0,0,0},{0,0,0}};
char board[S_BOARD][S_BOARD] = {0};

//0 --> player x
//1 --> player y
int current_player = 0;

//If user makes a mistake, dont update to next player
int dont_update_player = 0;

//Start to check for winner after 3 plays for effiency
int current_plays = 0;

//Function Prototypes
////////////////////////////////////
//Obviously displays the board
//No arguements are currently taken...
int display_board();

//Shows user coordinates for board
int help_display_board();

//Takes user input and saves to the multidimensional array
int make_move();

//Determines current user and outputs the char corresponding player
char c_current_player();

//Checks for a winning pattern
int check_winner();

int main( void ){

    //Shows user coordinates
    help_display_board();

    //Inform user about board positions
    display_board();

    //Ready to start playing...
    make_move();


    return(1);

}


int display_board( void ){

    int i,n;
    for(i = 0; i < S_BOARD; i++){
      for(n = 0; n < S_BOARD; n++){
          printf(".%c.", board[i][n]);
        }
        printf("\n");
      }

    return(1);
}

//Shows user predrawn coordinates
int help_display_board( void ){
  puts("\nBoard coordinates: ");
  for(int i = 0; i < S_BOARD; i++){
    for(int n = 0; n < S_BOARD; n++){
        printf("|%i,%i|", i, n);
      }
      printf("\n");
    }

  return(1);
}

//Determines which is current player
//0 --> x
//...
char c_current_player(void){
  if(current_player){
    current_player--;
    return('y');
  }else{
    current_player++;
    return('x');
  }
}

//Temporary Shortcut
char local_player;

//If arguement 1 is passed, the current player will be given another turn
int make_move( int dont_update_player ){

    //Values to be changed in the main array
    int x,y = 0;


    if( dont_update_player == 0 ){
        //Get current player
        local_player = c_current_player();
        //dont_update_player = 0;
    }

    //Check to make sure player is not empty
    if(! local_player){
        local_player = 'x';
    }

    printf("\nPlayer: %c's turn...\n\n",local_player);

    printf("Enter x location: ");
    scanf("%i",&x);

    printf("Enter y location: ");
    scanf("%i",&y);

    //Check if space on board is occupied
    if(board[x][y] != 0){
        printf("\n\nThat space is occupied already...\n\n");
        display_board();
        //Re-run again
        make_move(1);
    }else{
        //Actually write values
        board[x][y] = local_player;
        display_board();
        //Update current_plays to inch towards checking for a check_winner
        current_plays++;

        if(current_plays >= 3){
            check_winner();
        }

        make_move(0);

    }
    return(1);
}

int check_winner( void ){
    int x = 0, y = 0, checks = 0;
    char winner = '\0';

    while(checks <= CHECK_COUNT){
        //Current stored value in array
        char current_value = board[x][y];
        //printf("Current: %c\n",current_value);

        //x | y
        //x | y
        //x | y
        if(board[x+1][y] == current_value && board[x+2][y] == current_value){
            winner = current_value;
            break;
        }
        //x x x
        //y y y
        if(board[x][y+1] == current_value && board[x][y+2] == current_value){
            winner = current_value;
            break;
        }
        //x
        //  x
        //    x
        if(board[x+1][y+1] == current_value && board[x+2][y+2] == current_value){
            winner = current_value;
            break;
        }

	//Check opposite side of board
	current_value = board[x+2][y+2];

	//x x x
	if(board[x+2][y+1] == current_value && board[x+2][y]){
		winner = current_value;
		break;
	}

	if(board[x][y+2] == current_value && board[x+1][y+2] == current_value){
		winner = current_value;
		break;
	}


	//Check middle row and be done
	current_value = board[x][y+1];

	if(board[x+1][y+1] == current_value && board[x+2][y+1]){
		winner = current_value;
		break;
	}


        checks++;
    }

    if(winner){
      printf("Player %c wins!!!\n", winner);
      exit(1);
    }

    return(1);
}
