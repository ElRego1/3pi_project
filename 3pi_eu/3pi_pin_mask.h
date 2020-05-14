#ifndef _3pi_pin_mask_h
#define _3pi_pin_mask_h

#define PA0_M (1 << 0)
#define PA1_M (1 << 1)
#define PA2_M (1 << 2)
#define PA3_M (1 << 3)
#define PA4_M (1 << 4)
#define PA5_M (1 << 5)
#define PA6_M (1 << 6)
#define PA7_M (1 << 7)

#define PB0_M (1 << 0)
#define PB1_M (1 << 1) // left push button (A label)
#define PB2_M (1 << 2) // piezo buzzer	
#define PB3_M (1 << 3) // also known as OC2A --[for 3pi robot]-->  motor 2 (right motor) control B
#define PB4_M (1 << 4) // middle push button (B label)
#define PB5_M (1 << 5) // right push button (C label)
#define PB6_M (1 << 6)
#define PB7_M (1 << 7)

#define PC0_M (1 << 0)
#define PC1_M (1 << 1)
#define PC2_M (1 << 2)
#define PC3_M (1 << 3)
#define PC4_M (1 << 4)
#define PC5_M (1 << 5)
#define PC6_M (1 << 6)
#define PC7_M (1 << 7)

#define PD0_M (1 << 0)
#define PD1_M (1 << 1) // red user LED and optional left LED
#define PD2_M (1 << 2)
#define PD3_M (1 << 3) // also known as OC2B --[for 3pi robot]-->  motor 2 (right motor) control A
#define PD4_M (1 << 4)
#define PD5_M (1 << 5) // also known as OC0B --[for 3pi robot]-->  motor 1 (left motor) control A
#define PD6_M (1 << 6) // also known as OC0A --[for 3pi robot]-->  motor 1 (left motor) control B
#define PD7_M (1 << 7) // green user LED and optional right LED

#endif // _3pi_pin_mask_h