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
#include <string.h>

#define COL_ON(col) PORTA = 0b11111000 ^ (0b1000 << col); PORTB &= 0b11111100

// for software-PWM performance reasons this is all unrolled
// also this avoids conditionals over which port to address
#define ROW_0_ON() PORTA |= 1
#define ROW_0_OFF() PORTA &= ~1
#define ROW_1_ON() PORTA |= 0b10
#define ROW_1_OFF() PORTA &= ~0b10
#define ROW_2_ON() PORTA |= 0b100
#define ROW_2_OFF() PORTA &= ~0b100
#define ROW_3_ON() PORTB |= 1
#define ROW_3_OFF() PORTB &= ~1
#define ROW_4_ON() PORTB |= 0b10
#define ROW_4_OFF() PORTB &= ~0b10

void init_io()
{
  DDRA  = 0b11111111;
  PORTA = 0b11111000;
  DDRB  = 0b00000011;
  PORTB = 0b00000100;
}

void init_timer()
{
    TCCR0B = (1 << CS00);
    TIMSK0 = (1 << TOIE0);
}

volatile uint8_t framebuf[25] = {0};

ISR(TIM0_OVF_vect)
{
    static uint8_t count = 0;
    static uint8_t col = 0, base = 0;

    if (count == 0) {
        // switch column and clear rows
        if (++col == 5) {
            col = 0;
            base = 0;
        } else {
            base += 5;
        }
        COL_ON(col);

        // enable rows that are on
        if (framebuf[base]) ROW_0_ON();
        if (framebuf[base+1]) ROW_1_ON();
        if (framebuf[base+2]) ROW_2_ON();
        if (framebuf[base+3]) ROW_3_ON();
        if (framebuf[base+4]) ROW_4_ON();

    } else {
        // turn off rows
        if (framebuf[base] == count) ROW_0_OFF();
        if (framebuf[base+1] == count) ROW_1_OFF();
        if (framebuf[base+2] == count) ROW_2_OFF();
        if (framebuf[base+3] == count) ROW_3_OFF();
        if (framebuf[base+4] == count) ROW_4_OFF();
    }

    if (++count == 25)
        count = 0;
}

int main(void)
{
  init_io();
  init_timer();

  sei();

  uint8_t j = 0;
  for(;;) {
    for(uint8_t i = 0; i < 25; ++i) {
      uint8_t k = i + j;
      if (k > 25) k -= 25;  // fake modulo
      framebuf[i] = 25 - k;
    }
    if (++j == 25)
      j = 0;
    _delay_ms(20);
  }

}
