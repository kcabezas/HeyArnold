# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 25 "main.c"
void setPixel(int, int, unsigned short);
void drawFrame1();
void drawFrame2();
void drawFrame3();
void drawFrame4();
void drawFrame5();
void drawFrame6();
void drawFrame7();
void drawFrame8();
void drawFrame9();
void drawFrame10();
void delay();
void drawLine(int, int, int, unsigned short);
void drawHead(int, int, unsigned short);
void drawOval(int, int, int, int, unsigned short);
void drawEyes(int, int, int, int, unsigned short);
void drawPupils(int, int, int, int, unsigned short);
void drawNose(int, int, unsigned short);
void drawHat(int, int, unsigned short);
void drawBlush(int, int, int, int, unsigned short);
void drawLeftTri(int, int, int, unsigned short);
void drawRightTri(int, int, int, unsigned short);
void drawHair(unsigned short);
void drawNeck(unsigned short);

int main() {
    *(unsigned short *)0x4000000 = 1027;
    while(1) {
     drawFrame1();
     drawFrame2();
     drawFrame3();
     drawFrame4();
     drawFrame5();
     drawFrame6();
     drawFrame7();
     drawFrame8();
     drawFrame9();
     drawFrame10();
    }
}

void setPixel(int row, int col, unsigned short color)
{
    ((unsigned short *)0x6000000)[((row)*240 +(col))] = color;
}

void drawFrame1() {
 drawHair(((31) | (31)<<5 | (0)<<10));
 drawHead(80, 70, ((28) | (23)<<5 | (18)<<10));
 drawEyes(90, 90, 12, 8, ((31) | (31)<<5 | (31)<<10));
 drawPupils(92, 95, 3, 4, 0);
 drawNose(100, 130, ((20) | (10)<<5 | (5)<<10));
 drawLine(117, 120, 20, 0);
 drawHat(74, 123, ((5) | (18)<<5 | (25)<<10));


 setPixel(93, 94, ((31) | (31)<<5 | (31)<<10));
 setPixel(93, 164, ((31) | (31)<<5 | (31)<<10));

 delay();
}

void drawFrame2() {
 drawLine(117, 118, 2, 0);
 drawLine(117, 140, 2, 0);

 delay();
}

void drawFrame3() {
 drawLine(117, 116, 2, 0);
 drawLine(117, 142, 2, 0);


 setPixel(90, 90, ((28) | (23)<<5 | (18)<<10));
 setPixel(91, 88, ((28) | (23)<<5 | (18)<<10));
 setPixel(90, 172, ((28) | (23)<<5 | (18)<<10));
 setPixel(91, 174, ((28) | (23)<<5 | (18)<<10));


 drawBlush(111, 97, 2, 1, ((30) | (15)<<5 | (20)<<10));

 delay();
}

void drawFrame4() {
 drawLine(116, 114, 2, 0);
 drawLine(116, 144, 2, 0);


 setPixel(90, 91, ((28) | (23)<<5 | (18)<<10));
 setPixel(90, 92, ((28) | (23)<<5 | (18)<<10));
 setPixel(91, 89, ((28) | (23)<<5 | (18)<<10));
 setPixel(90, 171, ((28) | (23)<<5 | (18)<<10));
 setPixel(90, 170, ((28) | (23)<<5 | (18)<<10));
 setPixel(91, 173, ((28) | (23)<<5 | (18)<<10));

 drawBlush(110, 96, 4, 2, ((30) | (15)<<5 | (20)<<10));

 delay();
}

void drawFrame5() {

 drawLine(90, 93, 2, ((28) | (23)<<5 | (18)<<10));
 drawLine(90, 168, 2, ((28) | (23)<<5 | (18)<<10));


 drawLine(115, 112, 2, 0);
 drawLine(115, 146, 2, 0);


 setPixel(93, 95, ((31) | (31)<<5 | (31)<<10));
 setPixel(93, 165, ((31) | (31)<<5 | (31)<<10));

 drawBlush(109, 95, 6, 4, ((30) | (15)<<5 | (20)<<10));
}

void drawFrame6() {

 drawLine(114, 110, 2, 0);
 drawLine(114, 148, 2, 0);

 delay();
}

void drawFrame7() {
 delay();
}

void drawFrame8() {
 delay();
}

void drawFrame9() {
 delay();
}

void drawFrame10() {
 delay();
}

void delay() {
 int i;
 volatile int b;
 for (i = 0; i < 70000; i++) {
  b++;
 }
}

void drawLine(int row, int col, int length, unsigned short color) {
 int i;
 for (i = 0; i < length; i++) {
  setPixel(row, col+i, color);
 }
}

void drawHead(int row, int col, unsigned short color) {

 int i;
 int length = 100;
 int earRow;
 int earCol;

 for (i = 0; i < 20; i++) {
  drawLine(row, col, length, color);
  row++;
  col--;
  length += 2;
 }
 for (i = 0; i < 10; i++) {
  if (i == 0) {
   earRow = row;
   earCol = col;
  }
  drawLine(row, col, length, color);
  row++;
 }
 for (i = 0; i < 20; i++) {
  drawLine(row, col, length, color);
  row++;
  col++;
  length -= 2;
 }


 length = 8;
 drawOval(earRow, earCol-length, length, 8, color);
 drawOval(earRow, earCol+140, length, 8, color);
}

void drawOval(int row, int col, int length, int width, unsigned short color) {
 drawLine(row, col, length, color);
 row++;
 length += 4;
 int i;
 for (i = 0; i < width; i++) {
  drawLine(row, col-2, length, color);
  row++;
 }
 length -= 4;
 drawLine(row, col, length, color);
}

void drawEyes(int row, int col, int size, int width, unsigned short color) {
 drawOval(row, col, size, width, color);
 drawOval(row, col+70, size, width, color);
}

void drawPupils(int row, int col, int size, int width, unsigned short color) {
 drawOval(row, col, size, width, color);
 drawOval(row, col+70, size, width, color);
}

void drawNose(int row, int col, unsigned short color) {
 drawLine(row, col, 8, color);
 drawLine(row, col, 8, color);
 col++;

 int i;
 for (i = 0; i < 8; i++) {
  row++;
  setPixel(row, col+8, color);
  setPixel(row, col+7, color);
 }

 col--;
 drawLine(row, col, 8, color);
 drawLine(row, col, 8, color);
}

void drawHat(int row, int col, unsigned short color) {
 int length = 8;
 int i;
 for (i = 0; i < 6; i++) {
  drawLine(row, col, length, color);
  row++;
  if (i % 2 == 0) {
   col -= 2;
   length += 4;
  }
 }
 drawLine(row, col+6, 14, color);
 drawLine(row+1, col+6, 14, color);
 drawLine(row+2, col+8, 12, color);
 drawLine(row+3, col+8, 12, color);
}

void drawBlush(int row, int col, int size, int width, unsigned short color) {
 drawOval(row, col, size, width, color);
 drawOval(row, col+62, size, width, color);
}

void drawLeftTri(int row, int col, int size, unsigned short color) {
 int i;
 while (size > 0) {
     for (i = 0; i < size; i++) {
      setPixel(row-size+i, col, color);
      setPixel(row, col+i, color);
         setPixel(row-i, col+size-i, color);
     }
     size--;
 }
}

void drawRightTri(int row, int col, int size, unsigned short color) {
 int i;
 while (size > 0) {
     for (i = 0; i < size; i++) {
      setPixel(row-size+i, col, color);
      setPixel(row, col-size+1+i, color);
         setPixel(row-size+i, col-i, color);
     }
     size--;
 }
}

void drawHair(unsigned short color) {
 drawLeftTri(80, 70, 40, color);
 drawLeftTri(95, 55, 35, color);
 drawRightTri(80, 170, 40, color);
 drawRightTri(95, 185, 35, color);
}
