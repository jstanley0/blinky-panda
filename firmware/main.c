// blinky-panda
// (c) 2021 by Jeremy Stanley

// port assignments:
// PA0..PA2 -> row0..row2 anodes
// PA3..PA7 -> col0..col4 cathodes
// PB0..PB1 -> row3..row4 anodes
// PB2      -> tactile switch

// amount of time to spend on a single pattern, in milliseconds
// (note this is an unsigned 16-bit value)
#define PATTERN_MS 10000

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdlib.h>

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

#define BUTTON_STATE() (PINB & (1 << PB2))

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
        if (count >= framebuf[base]) ROW_0_OFF();
        if (count >= framebuf[base+1]) ROW_1_OFF();
        if (count >= framebuf[base+2]) ROW_2_OFF();
        if (count >= framebuf[base+3]) ROW_3_OFF();
        if (count >= framebuf[base+4]) ROW_4_OFF();
    }

    count = (count + 1) & 0x3F;
}

void fade_out()
{
    for(uint8_t i = 0; i < 6; ++i) {
        for(uint8_t j = 0; j < 25; ++j) {
            framebuf[j] >>= 1;
        }
        _delay_ms(10);
    }
}

int update()
{
    static uint16_t pattern_ms = 0;

    uint8_t pre = BUTTON_STATE();
    _delay_ms(25);  // <- must be a compile-time constant
    pattern_ms += 25;

    // switch to the next pattern if the time limit on this one has been exceeded or the button has been pressed
    if ((pattern_ms >= PATTERN_MS) || (BUTTON_STATE() && !pre)) {
        pattern_ms = 0;
        fade_out();
        return 1;
    }

    return 0;
}

int fade()
{
    if (update())
        return 1;

    for(uint8_t z = 0; z < 25; ++z) {
        framebuf[z] >>= 1;
    }
    return 0;
}

void chase3()
{
  int8_t i = 0, j = rand() % 25, k = 13;
  for(;;) {
    framebuf[i] = 63;
    framebuf[j] = 127;
    framebuf[k] = 63;
    if (fade())
        break;
    if (++i >= 25)
      i = 0;
    if (i & 1) {
      if (--j < 0)
        j = 24;
    }
    if (++k >= 25)
      k = 0;
  }
}

void raindrops()
{
  for(;;) {
    for(int8_t i = 0; i < 3; ++i) {
        framebuf[rand() % 25] = 255;
    }
    if (fade())
        break;
  }
}

void shimmer()
{
    uint8_t i = 0;
    for(;;) {
        for(int8_t j = i; j < 25; j += 5) {
            framebuf[j] = 255;
        }
        if (fade())
            return;
        if (++i == 5)
            i = 0;
    }
}

void cycle()
{
    uint8_t i = 0, j = 0;
    for(;;) {
        for(int8_t j = i; j < 25; j += 5) {
            framebuf[j] = 63;
        }
        if (fade())
            return;
        if (++j == 2) {
            j = 0;
            if (++i == 5)
                i = 0;
        }
    }
}

void sparkle()
{
    for(;;)
    {
        for(int8_t i = 1; i < 64; i <<= 1) {
            for(int8_t j = 0; j < 25; ++j) {
                framebuf[j] = i;
            }
            if (update())
                return;
        }

        for(int8_t i = 63; i >= 0; --i) {
            for(int8_t j = 0; j < 25; ++j) {
                framebuf[j] = i;
            }
            framebuf[rand() % 25] = 63;
            if (fade())
                return;
        }

        for(int8_t i = 0; i < 10; ++i) {
            framebuf[rand() % 25] = 63;
                if (fade())
                    return;
        }
    }
}

int main(void)
{
  init_io();
  init_timer();

  sei();

  for(;;) {
    chase3();
    shimmer();
    raindrops();
    cycle();
    sparkle();
  }

}
