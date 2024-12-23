#ifndef BOARD
#define BOARD
#include "../graphics.h"
#include <stdbool.h>

enum piece {
    w_pawn = -2,
    w_queen = -3,
    w_knight = -4,
    w_bishop = -5,
    w_king = -6,
    w_rook = -7,

    b_pawn = 6,
    b_queen = 7,
    b_knight = 8,
    b_bishop = 9,
    b_king = 10,
    b_rook = 11,
};

void resetBoard(int *pos);
void displayBoard(int *pos);
void redrawCube(int y,int c, int *pos);

struct tempboard{
	int positions[8*8];
	int score;
};
void doMove(int*pos, int selected, int endpoint, bool *wrook1, bool *wrook2, bool *brook1,
		    bool *brook2, bool *bking, bool *wking, bool *pawn, int * lastmove);
bool checkmate(int* board, bool white, bool pawn, int lastmove);
int getMoves(int c,int r,int * board,int * movebuffer, bool wrook1, bool wrook2, bool brook1, bool brook2, int lastmove, bool bking, bool wking, bool pawn, bool check);
int getMovesPawn(int c,int r,int * board,int * movebuffer, bool white, int lastmove, bool pawn);
int getMovesKnight(int c,int r,int * board,int * movebuffer, bool white);
int getMovesBishop(int c, int r, int * board, int * movebuffer, bool white);
int getMovesRook(int c, int r, int * board, int * movebuffer, bool white);
int getMovesQueen(int c, int r, int * board, int *movebuffer, bool white);
bool squareSafe(int c, int r, bool white, int * board);
int getMovesKing(int c, int r, int * board, int *movebuffer, bool white, bool wking, bool bking, bool wrook1, bool wrook2, bool brook1, bool brook2, bool check);
bool legalMove(int * movebuffer,int selected);
int position(int c, int r);
int boardAt(int c, int r, int *board);
bool inCheck(int *board, bool white);
int boardAtPos(int position, int*board);
#endif
