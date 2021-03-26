// blinky-panda
// (c) 2021 by Jeremy Stanley

// port assignments:
// PA0..PA2 -> row0..row2 anodes
// PA3..PA7 -> col0..col4 cathodes
// PB0..PB1 -> row3..row4 anodes
// PB2      -> tactile switch

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <util/delay.h>


void init_io()
{
  DDRA  = 0b11111111;
  PORTA = 0b11111000;
  DDRB  = 0b00000011;
  PORTB = 0b00000100;
}

int main(void)
{
  init_io();

  for(;;) {
    for(uint8_t col = 0; col < 5; ++col) {
      PORTA = 0b11111000 ^ (0b1000 << col);
      PORTB &= 0b11111100;
      for(uint8_t row = 0; row < 3; ++row) {
        PORTA |= (1 << row);
        _delay_ms(100);
      }
      for(uint8_t row = 3; row < 5; ++row) {
        PORTB |= (1 << (row - 3));
        _delay_ms(100);
      }
    }
  }

}
