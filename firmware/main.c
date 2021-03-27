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


#define ROW_ON(row) ((row < 3) ? (PORTA |= (1 << row)) : (PORTB |= (1 << (row - 3))))
#define ROW_OFF(row) ((row < 3) ? (PORTA &= ~(1 << row)) : (PORTB &= ~(1 << (row - 3))))

void init_io()
{
  DDRA  = 0b11111111;
  PORTA = 0b00000000;
  DDRB  = 0b00000011;
  PORTB = 0b00000100;
}

void init_timer()
{
    TCCR0B = (1 << CS02);// | (1 << CS00);// (1 << CS01) | (1 << CS00);
    TIMSK0 = (1 << TOIE0) | (1 << OCIE0A);
}

static volatile uint8_t row_out = 0, row_in = 1, fade = 0;

ISR(TIM0_OVF_vect)
{
    ROW_OFF(row_out);
    ROW_ON(row_in);

    if (++OCR0A == 0) {
        if (++row_out >= 5)
            row_out = 0;
        if (++row_in >= 5)
            row_in = 0;
    }
}

ISR(TIM0_COMPA_vect)
{
    ROW_OFF(row_in);
    ROW_ON(row_out);
}

int main(void)
{
  init_io();
  init_timer();

  sei();

  for(;;) {
    set_sleep_mode(SLEEP_MODE_IDLE);
    sleep_cpu();
  }

}
