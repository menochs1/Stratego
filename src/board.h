#ifndef BOARD_H
#define BOARD_H

#include <raylib.h>

struct tile{
    bool isWater;
    int piece, x, y;
    int player;
};
class board{
    private:
        tile theBoard[10][10];
    public:
        board();
        void drawBoard();
        void loadBoard();

};



#endif // BOARD_H