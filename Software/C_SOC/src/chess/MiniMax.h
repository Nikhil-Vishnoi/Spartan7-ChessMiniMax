#ifndef MINIMAX
#define MINIMAX

#include "board.h"
#include <stdbool.h>
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"

// ALWAYS PLAYS AS BLACK
int* play(int* board);

// Returns score
int minimaxExt(int *board, int* move, int depth, bool white,
		bool wrook1, bool wrook2, bool wking, bool brook1, bool brook2, bool bking,
		int lastmove, bool pawn, bool check
);
int minimax(int *board, int* move, int depth, bool white,
		bool wrook1, bool wrook2, bool wking, bool brook1, bool brook2, bool bking,
		int lastmove, bool pawn, bool check, int alpha, int beta
);
// Board Score based on given heuristic
int boardScore(int *board);

void enterLate();


#endif
