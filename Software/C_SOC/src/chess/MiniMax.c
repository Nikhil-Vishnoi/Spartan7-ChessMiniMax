#include "MiniMax.h"
#include <limits.h>
// Hueristic
// Credits goes to https://github.com/aiden200/chess_ai/blob/main/chess_engine/piece_values.py
// These hueristics look kinda bad but ill try it
// These are in blacks POV
// When using for white need to rotate 180 degrees. (7-c,7-r)
const int pawntable[64] = { 0, 0, 0, 0, 0, 0, 0, 0,
    5, 10, 10, -20, -20, 10, 10, 5,
    5, -5, -10, 0, 0, -10, -5, 5,
    0, 0, 0, 20, 20, 0, 0, 0,
    5, 5, 10, 25, 25, 10, 5, 5,
    10, 10, 20, 30, 30, 20, 10, 10,
    50, 50, 50, 50, 50, 50, 50, 50,
    0, 0, 0, 0, 0, 0, 0, 0};
const int knightstable[64] = {
    -50, -40, -30, -30, -30, -30, -40, -50,
    -40, -20, 0, 5, 5, 0, -20, -40,
    -30, 5, 10, 15, 15, 10, 5, -30,
    -30, 0, 15, 20, 20, 15, 0, -30,
    -30, 5, 15, 20, 20, 15, 5, -30,
    -30, 0, 10, 15, 15, 10, 0, -30,
    -40, -20, 0, 0, 0, 0, -20, -40,
    -50, -40, -30, -30, -30, -30, -40, -50};
const int bishopstable[64] = {
    -20, -10, -10, -10, -10, -10, -10, -20,
    -10, 5, 0, 0, 0, 0, 5, -10,
    -10, 10, 10, 10, 10, 10, 10, -10,
    -10, 0, 10, 10, 10, 10, 0, -10,
    -10, 5, 5, 10, 10, 5, 5, -10,
    -10, 0, 5, 10, 10, 5, 0, -10,
    -10, 0, 0, 0, 0, 0, 0, -10,
    -20, -10, -10, -10, -10, -10, -10, -20};
const int rookstable[64] = {
    0, 0, 0, 5, 5, 0, 0, 0,
    -5, 0, 0, 0, 0, 0, 0, -5,
    -5, 0, 0, 0, 0, 0, 0, -5,
    -5, 0, 0, 0, 0, 0, 0, -5,
    -5, 0, 0, 0, 0, 0, 0, -5,
    -5, 0, 0, 0, 0, 0, 0, -5,
    5, 10, 10, 10, 10, 10, 10, 5,
    0, 0, 0, 0, 0, 0, 0, 0};
const int queenstable[64] = {
    -20, -10, -10, -5, -5, -10, -10, -20,
    -10, 0, 0, 0, 0, 0, 0, -10,
    -10, 5, 5, 5, 5, 5, 0, -10,
    0, 0, 5, 5, 5, 5, 0, -5,
    -5, 0, 5, 5, 5, 5, 0, -5,
    -10, 0, 5, 5, 5, 5, 0, -10,
    -10, 0, 0, 0, 0, 0, 0, -10,
    -20, -10, -10, -5, -5, -10, -10, -20};

const int kingstable[64] = {
    20, 30, 10, 0, 0, 10, 30, 20,
    20, 20, 0, 0, 0, 0, 20, 20,
    -10, -20, -20, -20, -20, -20, -20, -10,
    -20, -30, -30, -40, -40, -30, -30, -20,
    -30, -40, -40, -50, -50, -40, -40, -30,
    -30, -40, -40, -50, -50, -40, -40, -30,
    -30, -40, -40, -50, -50, -40, -40, -30,
    -30, -40, -40, -50, -50, -40, -40, -30};

const int kings_end_game_table[64] = {
    -50,-40,-30,-20,-20,-30,-40,-50,
    -30,-20,-10,  0,  0,-10,-20,-30,
    -30,-10, 20, 30, 30, 20,-10,-30,
    -30,-10, 30, 40, 40, 30,-10,-30,
    -30,-10, 30, 40, 40, 30,-10,-30,
    -30,-10, 20, 30, 30, 20,-10,-30,
    -30,-30,  0,  0,  0,  0,-30,-30,
    -50,-30,-30,-30,-30,-30,-30,-50};

int pawn = 100;
int knight = 300;
int bishop = 300;
int rook = 300;
int queen = 900;
int king = 100000;

// Code Starts Here
bool lategame = false;
int boardScore(int *board) {
//	 xil_printf("\n\n_________________________________________________\n");

	int value = 0;
	for(int i = 0; i < 64; i++) {
		int r = i/8;
		int c = i%8;
//		xil_printf("%d   ",board[i]);
//		if((i+1)%8 == 0 && i != 0){
//			 xil_printf("\n");
//		}
		if (board[i] < 0) {// White
			r = 7-r;
			c = 7-c;
			switch(board[i]) {
			case w_pawn:
				value = value + pawn + pawntable[c+r*8];
				break;
			case w_king:
				if(lategame == false)
					value = value + king + kingstable[c+r*8];
				else
					value = value + king + kings_end_game_table[c+r*8];

				break;
			case w_rook:
				value = value + rook + rookstable[c+r*8];
				break;
			case w_bishop:
				value = value + bishop + bishopstable[c+r*8];
				break;
			case w_knight:
				value = value + knight + knightstable[c+r*8];
				break;
			}
		} else if (board[i] > 0) { // Black
			switch(board[i]) {
			case b_pawn:
				value = value - pawn - pawntable[c+r*8];
				break;
			case b_king:
				if(lategame == false)
					value = value - king - kingstable[c+r*8];
				else
					value = value - king - kings_end_game_table[c+r*8];
				break;
			case b_rook:
				value = value - rook - rookstable[c+r*8];
				break;
			case b_bishop:
				value = value - bishop - bishopstable[c+r*8];
				break;
			case b_knight:
				value = value - knight - knightstable[c+r*8];
				break;
			}
		}
	}
//	xil_printf("\nValue = %d\n",value);
//	 xil_printf("\n_________________________________________________\n");
	return value;

}
void enterLate() {
	lategame = true;
}
// External so I dont need to import limits.h inside the driver.c just cuz
int minimaxExt(int *board, int* move, int depth, bool white,
		bool wrook1, bool wrook2, bool wking, bool brook1, bool brook2, bool bking,
		int lastmove, bool pawn, bool check
) {
	// Call the minimax with alpha beta pruning
	return minimax( board,  move,  depth,  white,
			 wrook1,  wrook2,  wking,  brook1,  brook2,  bking,
			 lastmove,  pawn,  check, INT_MIN, INT_MAX);
}
int minimax(int *board, int* move, int depth, bool white,
		bool wrook1, bool wrook2, bool wking, bool brook1, bool brook2, bool bking,
		int lastmove, bool pawn, bool check, int alpha, int beta
) {
	bool prune = true; // Got the same moves when i turned this to false so pruning only kills trees that wont be picked
	/**
	 * Main Algorithm is a recursive tree with a variable depth
	 * Each level switches between sides going botColor, humanColor, botColor
	 * Blacks goal is to minimize the board value
	 * Whites goal is to maximize the board value
	 * Each parent choses the best board child that it can and gets assigned that value
	 *
	 * Alpha Beta values are given to keep track of the parents children and once it sees a node
	 * On whites turn we will be updating our alpha value with the largest child board score
	 * If we see that our alpha value has overtaken the beta value we know that the grand parent of the
	 * node we are on will never chose this tree anyways so we can just return the highest score we saw
	 * in this node subtree without exploring anymore.
	 * Beta works similar to alpha on blacks turn except we update with the lowest child board score
	 * Code for checking alpha >= beta is on line 451.
	 */

	if (depth == 0) {
		return boardScore(board); // Base case just returns the score of the base level baord in the tree
	}
	if (checkmate(board,white, pawn, lastmove)){ // No moves to do
		if(inCheck(board,white)) { // Give checkmate high value so bot will do checkmates and avoid mates
			if(white) {
				// White is in checkmate
				return INT_MIN;
			}else
				return INT_MAX;
		}else {
			return 0; // draw is 0
		}
	}
	// Add a return 0 for insufficient material draw also once I make that

	// Go through the board to every piece and try out their moves
	int score;
	int best_move;
	bool first = true;

	int movebuffer[32];
	for (int i = 0; i < 32; i++) movebuffer[i] = -1;

	for(int i = 0; i < 64; i++) {
		if(white && board[i] < 0) { // The black side is the exact same except the > are replaced with < since black is Mini and white is Maxi
			// White Moves
			getMoves(i%8,i/8, board, movebuffer,wrook1,wrook2,brook1, brook2, lastmove,
					 bking,  wking,  pawn,  check); // Get all the moves this piece can make

			for(int x = 0; x < 32; x++) {
				if(movebuffer[x] == -1) break; // Go over all the moves
				int pos[64];
				for (int l = 0; l < 64; l++) pos[l] = board[l];
				bool wrook1_temp = wrook1;
				bool wrook2_temp = wrook2;
				bool brook1_temp = brook1;
				bool brook2_temp = brook2;
				bool bking_temp = bking;
				bool wking_temp = wking;
				bool pawn_temp  = pawn;
				int  lastmove_temp = lastmove;
				int  pickedmove = -1;
				doMove(pos,i,movebuffer[x],&wrook1_temp,&wrook2_temp,&brook1_temp,&brook2_temp,
					   &bking_temp,&wking_temp,&pawn_temp,&lastmove_temp);
				// Can just brain dead shove this into my doMove function because it can
				// account for all specail moves except promotion.
				// For promotion since I am controlling everything I am going to encode
				// promotion data in the move number.
				if (movebuffer[x]/8 == 0 && boardAtPos(movebuffer[x],pos) == w_pawn) {
					// Have four board types do every single one
					// Code is 1 * 10000 for rook
					// 2*10000 for bishop
					// 3*10000 for knight
					// 4*10000 for queen



					pos[movebuffer[x]] = w_knight;
					 int node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 30000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value > score) {
						best_move = 30000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score > alpha && white == true) {
						alpha = score; // Update Alpha
					}
					pos[movebuffer[x]] = w_queen;
					 node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 40000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value > score) {
						best_move = 40000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score > alpha && white == true) {
						alpha = score; // Update Alpha
					}

					pos[movebuffer[x]] = w_rook; // Update the board to what I wanted to promote to
					// Does the minimax
					node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);
					// If its the first time store our values
					if (first) {
						first = false;
						best_move = 10000+i*100 + movebuffer[x];
						score = node_value;
					}
					// If not the first time only update the maxi if theres a new maximum
					if (node_value > score) {
						best_move = 10000+ i*100 + movebuffer[x];
						score = node_value;
					}
					if (score > alpha && white == true) {
						alpha = score; // Update Alpha
					}
					// Lines 234-253 are the exact algorithm I use for the following pieces.
					// And for non promotions so I am only going to have comments for these lines.
					// Looking back this was probably VERY compactable text wise but its fine
					// Im sleepy and im not changing any of this if it works it works.

					pos[movebuffer[x]] = w_bishop;
					 node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 20000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value > score) {
						best_move = 20000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score > alpha && white == true) {
						alpha = score; // Update Alpha
					}
				}else {
					int node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value > score) {
						best_move = i*100 + movebuffer[x];
						score = node_value;
					}
					if (score > alpha && white == true) {
						alpha = score; // Update Alpha
					}
				}
				movebuffer[x] = -1;
			}

		}else if (white == false && board[i] > 0) {
			// Black Moves
			getMoves(i%8,i/8, board, movebuffer,wrook1,wrook2,brook1, brook2, lastmove,
					 bking,  wking,  pawn,  check);
			for(int x = 0; x < 32; x++) {
				if(movebuffer[x] == -1) break;
				int pos[64];
				for (int l = 0; l < 64; l++) pos[l] = board[l];
				bool wrook1_temp = wrook1;
				bool wrook2_temp = wrook2;
				bool brook1_temp = brook1;
				bool brook2_temp = brook2;
				bool bking_temp = bking;
				bool wking_temp = wking;
				bool pawn_temp  = pawn;
				int  lastmove_temp = lastmove;
				int  pickedmove = -1;
				doMove(pos,i,movebuffer[x],&wrook1_temp,&wrook2_temp,&brook1_temp,&brook2_temp,
					   &bking_temp,&wking_temp,&pawn_temp,&lastmove_temp);
				if (movebuffer[x]/8 == 7 && boardAtPos(movebuffer[x],pos) == b_pawn) {
					// Have four board types




					pos[movebuffer[x]] = b_knight;
					 int node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 30000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value < score) {
						best_move = 30000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score < beta && white == false) {
						beta = score; // Update Beta
					}
					pos[movebuffer[x]] = b_queen;
					 node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 40000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value < score) {
						best_move = 40000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score < beta && white == false) {
						beta = score; // Update Beta
					}

					pos[movebuffer[x]] = b_bishop;
					 node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 20000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value < score) {
						best_move = 20000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score < beta && white == false) {
						beta = score; // Update Beta
					}

					pos[movebuffer[x]] = b_rook;
					node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = 10000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value < score) {
						best_move = 10000+i*100 + movebuffer[x];
						score = node_value;
					}
					if (score < beta && white == false) {
						beta = score; // Update Beta
					}
				}else {
					int node_value = minimax(
							pos, &pickedmove, depth-1,!white, wrook1_temp, wrook2_temp, wking_temp,
							brook1_temp, brook2_temp, bking_temp, lastmove_temp, pawn_temp, check, alpha, beta
							);

					if (first) {
						first = false;
						best_move = i*100 + movebuffer[x];
						score = node_value;
					}
					if (node_value < score) {
						best_move = i*100 + movebuffer[x];
						score = node_value;
					}
					if (score < beta && white == false) {
						beta = score; // Update Beta
					}
				}
				movebuffer[x] = -1;
				if (alpha >= beta && prune) {
					// Found the case
					// All i need to do is leave because
					// my best move is already stored inside the bestmove pointer which my
					// parent has access to and knows how to use.
					*move = best_move;
					return score;
				}
			}



		}
	}
	*move = best_move;
	return score;
}
