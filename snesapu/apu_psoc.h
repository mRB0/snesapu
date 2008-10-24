#ifndef APU_PSOC_H_
#define APU_PSOC_H_

// number for delay loop when resetting APU
#define RESET_DELAY	7500
// number for delay loop between /RD or /WR assert and data read/write
#define READ_DELAY	10
#define WRITE_DELAY	10


// macros
#define SETPINS(port, bits)				(port |= bits)
#define CLRPINS(port, bits)				(port &= ~(bits))
#define GETPINS(port, bits)				(port & bits)

#define SET_DATA(port, bits)			SET_DATA_WRAPPED(port, bits)
#define CLR_DATA(port, bits)			CLR_DATA_WRAPPED(port, bits)
#define GET_DATA(port, bits)			GET_DATA_WRAPPED(port, bits)
#define SET_DATA_WRAPPED(port, bits)			SETPINS(PRT ## port ## DR, bits)
#define CLR_DATA_WRAPPED(port, bits)			CLRPINS(PRT ## port ## DR, bits)
#define GET_DATA_WRAPPED(port, bits)			GETPINS(PRT ## port ## DR, bits)

#define GO_OUTPUT(port, bits) 			GO_OUTPUT_WRAPPED(port, bits)
#define GO_OUTPUT_WRAPPED(port, bits)	SETPINS(PRT ## port ## DM2, bits); CLRPINS(PRT ## port ## DM1, bits); SETPINS(PRT ## port ## DM0, bits)
#define GO_INPUT(port, bits)			GO_INPUT_WRAPPED(port, bits)
#define GO_INPUT_WRAPPED(port, bits)	CLRPINS(PRT ## port ## DM2, bits); SETPINS(PRT ## port ## DM1, bits); SETPINS(PRT ## port ## DM0, bits); SET_DATA(port, bits)


#define _WR_PORT	2
#define _WR_PIN		0x04
#define _RD_PORT	2
#define _RD_PIN		0x80

#define _RESET_PORT	0
#define _RESET_PIN	0x10

#define PA0_PORT	2
#define PA0_PIN		0x01
#define PA1_PORT	0
#define PA1_PIN		0x04

#define D0_PORT		2
#define D0_PIN		0x10
#define D1_PORT		2
#define D1_PIN		0x20
#define D2_PORT		2
#define D2_PIN		0x40
#define D3_PORT		2
#define D3_PIN		0x08
#define D4_PORT		0
#define D4_PIN		0x01
#define D5_PORT		2
#define D5_PIN		0x02
#define D6_PORT		0
#define D6_PIN		0x04
#define D7_PORT		1
#define D7_PIN		0x40

#endif
