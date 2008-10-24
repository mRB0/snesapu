	cpu LMM
	.module main.c
	.area text(rom, con, rel)
	.dbfile ./main.c
	.dbfunc e go_data_output _go_data_output fV
_go_data_output::
	.dbline -1
	.dbline 20
; //----------------------------------------------------------------------------
; // C main line
; //----------------------------------------------------------------------------
; 
; #include <m8c.h>        // part specific constants and macros
; #include "PSoCAPI.h"    // PSoC API definitions for all User Modules
; #include "apu_psoc.h"
; 
; //#define ADDR_DEBUG
; 
; #define UART_FLUSH()          while (!(UART_bReadTxStatus() & UART_TX_BUFFER_EMPTY)) \
;                               { /* wait for buffer empty */ }                    \
;                               UART_bReadTxStatus(); /* clear TX_COMPLETE */        \
;                               while (!(UART_bReadTxStatus() & UART_TX_COMPLETE))     \
;                               { /* wait for TX_COMPLETE */ }
; 
; 
; 
; void go_data_output(void)
; {
	.dbline 21
; 	GO_OUTPUT(D0_PORT, D0_PIN);
	or REG[0xb],16
	.dbline 21
	or F,0x10  ; iopage = 1
	and REG[0x9],-17
	and F,0xEF ; iopage = 0
	.dbline 21
	or F,0x10  ; iopage = 1
	or REG[0x8],16
	and F,0xEF ; iopage = 0
	.dbline 22
; 	GO_OUTPUT(D1_PORT, D1_PIN);
	or REG[0xb],32
	.dbline 22
	or F,0x10  ; iopage = 1
	and REG[0x9],-33
	and F,0xEF ; iopage = 0
	.dbline 22
	or F,0x10  ; iopage = 1
	or REG[0x8],32
	and F,0xEF ; iopage = 0
	.dbline 23
; 	GO_OUTPUT(D2_PORT, D2_PIN);
	or REG[0xb],64
	.dbline 23
	or F,0x10  ; iopage = 1
	and REG[0x9],-65
	and F,0xEF ; iopage = 0
	.dbline 23
	or F,0x10  ; iopage = 1
	or REG[0x8],64
	and F,0xEF ; iopage = 0
	.dbline 24
; 	GO_OUTPUT(D3_PORT, D3_PIN);
	or REG[0xb],8
	.dbline 24
	or F,0x10  ; iopage = 1
	and REG[0x9],-9
	and F,0xEF ; iopage = 0
	.dbline 24
	or F,0x10  ; iopage = 1
	or REG[0x8],8
	and F,0xEF ; iopage = 0
	.dbline 25
; 	GO_OUTPUT(D4_PORT, D4_PIN);
	or REG[0x3],1
	.dbline 25
	or F,0x10  ; iopage = 1
	and REG[0x1],-2
	and F,0xEF ; iopage = 0
	.dbline 25
	or F,0x10  ; iopage = 1
	or REG[ 0],1
	and F,0xEF ; iopage = 0
	.dbline 26
; 	GO_OUTPUT(D5_PORT, D5_PIN);
	or REG[0xb],2
	.dbline 26
	or F,0x10  ; iopage = 1
	and REG[0x9],-3
	and F,0xEF ; iopage = 0
	.dbline 26
	or F,0x10  ; iopage = 1
	or REG[0x8],2
	and F,0xEF ; iopage = 0
	.dbline 27
; 	GO_OUTPUT(D6_PORT, D6_PIN);
	or REG[0x3],4
	.dbline 27
	or F,0x10  ; iopage = 1
	and REG[0x1],-5
	and F,0xEF ; iopage = 0
	.dbline 27
	or F,0x10  ; iopage = 1
	or REG[ 0],4
	and F,0xEF ; iopage = 0
	.dbline 28
; 	GO_OUTPUT(D7_PORT, D7_PIN);
	or REG[0x7],64
	.dbline 28
	or F,0x10  ; iopage = 1
	and REG[0x5],-65
	and F,0xEF ; iopage = 0
	.dbline 28
	or F,0x10  ; iopage = 1
	or REG[0x4],64
	and F,0xEF ; iopage = 0
	.dbline -2
	.dbline 29
; }
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e go_data_input _go_data_input fV
_go_data_input::
	.dbline -1
	.dbline 32
; 
; void go_data_input(void)
; {
	.dbline 33
; 	GO_INPUT(D0_PORT, D0_PIN);
	and REG[0xb],-17
	.dbline 33
	or F,0x10  ; iopage = 1
	or REG[0x9],16
	and F,0xEF ; iopage = 0
	.dbline 33
	or F,0x10  ; iopage = 1
	or REG[0x8],16
	and F,0xEF ; iopage = 0
	.dbline 33
	or REG[0x8],16
	.dbline 34
; 	GO_INPUT(D1_PORT, D1_PIN);
	and REG[0xb],-33
	.dbline 34
	or F,0x10  ; iopage = 1
	or REG[0x9],32
	and F,0xEF ; iopage = 0
	.dbline 34
	or F,0x10  ; iopage = 1
	or REG[0x8],32
	and F,0xEF ; iopage = 0
	.dbline 34
	or REG[0x8],32
	.dbline 35
; 	GO_INPUT(D2_PORT, D2_PIN);
	and REG[0xb],-65
	.dbline 35
	or F,0x10  ; iopage = 1
	or REG[0x9],64
	and F,0xEF ; iopage = 0
	.dbline 35
	or F,0x10  ; iopage = 1
	or REG[0x8],64
	and F,0xEF ; iopage = 0
	.dbline 35
	or REG[0x8],64
	.dbline 36
; 	GO_INPUT(D3_PORT, D3_PIN);
	and REG[0xb],-9
	.dbline 36
	or F,0x10  ; iopage = 1
	or REG[0x9],8
	and F,0xEF ; iopage = 0
	.dbline 36
	or F,0x10  ; iopage = 1
	or REG[0x8],8
	and F,0xEF ; iopage = 0
	.dbline 36
	or REG[0x8],8
	.dbline 37
; 	GO_INPUT(D4_PORT, D4_PIN);
	and REG[0x3],-2
	.dbline 37
	or F,0x10  ; iopage = 1
	or REG[0x1],1
	and F,0xEF ; iopage = 0
	.dbline 37
	or F,0x10  ; iopage = 1
	or REG[ 0],1
	and F,0xEF ; iopage = 0
	.dbline 37
	or REG[ 0],1
	.dbline 38
; 	GO_INPUT(D5_PORT, D5_PIN);
	and REG[0xb],-3
	.dbline 38
	or F,0x10  ; iopage = 1
	or REG[0x9],2
	and F,0xEF ; iopage = 0
	.dbline 38
	or F,0x10  ; iopage = 1
	or REG[0x8],2
	and F,0xEF ; iopage = 0
	.dbline 38
	or REG[0x8],2
	.dbline 39
; 	GO_INPUT(D6_PORT, D6_PIN);
	and REG[0x3],-5
	.dbline 39
	or F,0x10  ; iopage = 1
	or REG[0x1],4
	and F,0xEF ; iopage = 0
	.dbline 39
	or F,0x10  ; iopage = 1
	or REG[ 0],4
	and F,0xEF ; iopage = 0
	.dbline 39
	or REG[ 0],4
	.dbline 40
; 	GO_INPUT(D7_PORT, D7_PIN);
	and REG[0x7],-65
	.dbline 40
	or F,0x10  ; iopage = 1
	or REG[0x5],64
	and F,0xEF ; iopage = 0
	.dbline 40
	or F,0x10  ; iopage = 1
	or REG[0x4],64
	and F,0xEF ; iopage = 0
	.dbline 40
	or REG[0x4],64
	.dbline -2
	.dbline 41
; }
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e apu_put_data _apu_put_data fV
;           data -> X-4
_apu_put_data::
	.dbline -1
	push X
	mov X,SP
	.dbline 44
; 
; void apu_put_data(unsigned char data)
; {
	.dbline 47
; 	// this is gross!!!
; 	
; 	if (data & 0x01)
	tst [X-4],1
	jz L4
	.dbline 48
; 		SET_DATA(D0_PORT, D0_PIN);
	or REG[0x8],16
	xjmp L5
L4:
	.dbline 50
; 	else
; 		CLR_DATA(D0_PORT, D0_PIN);
	and REG[0x8],-17
L5:
	.dbline 52
; 	
; 	if (data & 0x02)
	tst [X-4],2
	jz L6
	.dbline 53
; 		SET_DATA(D1_PORT, D1_PIN);
	or REG[0x8],32
	xjmp L7
L6:
	.dbline 55
; 	else
; 		CLR_DATA(D1_PORT, D1_PIN);
	and REG[0x8],-33
L7:
	.dbline 57
; 	
; 	if (data & 0x04)
	tst [X-4],4
	jz L8
	.dbline 58
; 		SET_DATA(D2_PORT, D2_PIN);
	or REG[0x8],64
	xjmp L9
L8:
	.dbline 60
; 	else
; 		CLR_DATA(D2_PORT, D2_PIN);
	and REG[0x8],-65
L9:
	.dbline 62
; 	
; 	if (data & 0x08)
	tst [X-4],8
	jz L10
	.dbline 63
; 		SET_DATA(D3_PORT, D3_PIN);
	or REG[0x8],8
	xjmp L11
L10:
	.dbline 65
; 	else
; 		CLR_DATA(D3_PORT, D3_PIN);
	and REG[0x8],-9
L11:
	.dbline 67
; 	
; 	if (data & 0x10)
	tst [X-4],16
	jz L12
	.dbline 68
; 		SET_DATA(D4_PORT, D4_PIN);
	or REG[ 0],1
	xjmp L13
L12:
	.dbline 70
; 	else
; 		CLR_DATA(D4_PORT, D4_PIN);
	and REG[ 0],-2
L13:
	.dbline 72
; 	
; 	if (data & 0x20)
	tst [X-4],32
	jz L14
	.dbline 73
; 		SET_DATA(D5_PORT, D5_PIN);
	or REG[0x8],2
	xjmp L15
L14:
	.dbline 75
; 	else
; 		CLR_DATA(D5_PORT, D5_PIN);
	and REG[0x8],-3
L15:
	.dbline 77
; 	
; 	if (data & 0x40)
	tst [X-4],64
	jz L16
	.dbline 78
; 		SET_DATA(D6_PORT, D6_PIN);
	or REG[ 0],4
	xjmp L17
L16:
	.dbline 80
; 	else
; 		CLR_DATA(D6_PORT, D6_PIN);
	and REG[ 0],-5
L17:
	.dbline 82
; 	
; 	if (data & 0x80)
	tst [X-4],-128
	jz L18
	.dbline 83
; 		SET_DATA(D7_PORT, D7_PIN);
	or REG[0x4],64
	xjmp L19
L18:
	.dbline 85
	and REG[0x4],-65
L19:
	.dbline -2
	.dbline 86
; 	else
; 		CLR_DATA(D7_PORT, D7_PIN);
; }
L3:
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l data -4 c
	.dbend
	.dbfunc e apu_get_data _apu_get_data fc
;         indata -> X+0
_apu_get_data::
	.dbline -1
	push X
	mov X,SP
	add SP,17
	.dbline 89
; 
; unsigned char apu_get_data(void)
; {
	.dbline 91
; 	// this is also pretty ugly
; 	unsigned char indata = 0x00;
	mov [X+0],0
	.dbline 93
; 	
; 	indata |= (GET_DATA(D6_PORT, D6_PIN)) ? 0x40 : 0x00;
	tst REG[ 0],4
	jz L22
	mov [X+2],64
	mov [X+1],0
	xjmp L23
L22:
	mov [X+2],0
	mov [X+1],0
L23:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+2]
	or [__r1],A
	mov A,[X+1]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 94
; 	indata |= (GET_DATA(D0_PORT, D0_PIN)) ? 0x01 : 0x00;
	tst REG[0x8],16
	jz L25
	mov [X+4],1
	mov [X+3],0
	xjmp L26
L25:
	mov [X+4],0
	mov [X+3],0
L26:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+4]
	or [__r1],A
	mov A,[X+3]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 95
; 	indata |= (GET_DATA(D1_PORT, D1_PIN)) ? 0x02 : 0x00;
	tst REG[0x8],32
	jz L28
	mov [X+6],2
	mov [X+5],0
	xjmp L29
L28:
	mov [X+6],0
	mov [X+5],0
L29:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+6]
	or [__r1],A
	mov A,[X+5]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 96
; 	indata |= (GET_DATA(D2_PORT, D2_PIN)) ? 0x04 : 0x00;
	tst REG[0x8],64
	jz L31
	mov [X+8],4
	mov [X+7],0
	xjmp L32
L31:
	mov [X+8],0
	mov [X+7],0
L32:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+8]
	or [__r1],A
	mov A,[X+7]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 97
; 	indata |= (GET_DATA(D3_PORT, D3_PIN)) ? 0x08 : 0x00;
	tst REG[0x8],8
	jz L34
	mov [X+10],8
	mov [X+9],0
	xjmp L35
L34:
	mov [X+10],0
	mov [X+9],0
L35:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+10]
	or [__r1],A
	mov A,[X+9]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 98
; 	indata |= (GET_DATA(D4_PORT, D4_PIN)) ? 0x10 : 0x00;
	tst REG[ 0],1
	jz L37
	mov [X+12],16
	mov [X+11],0
	xjmp L38
L37:
	mov [X+12],0
	mov [X+11],0
L38:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+12]
	or [__r1],A
	mov A,[X+11]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 99
; 	indata |= (GET_DATA(D5_PORT, D5_PIN)) ? 0x20 : 0x00;
	tst REG[0x8],2
	jz L40
	mov [X+14],32
	mov [X+13],0
	xjmp L41
L40:
	mov [X+14],0
	mov [X+13],0
L41:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+14]
	or [__r1],A
	mov A,[X+13]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 100
; 	indata |= (GET_DATA(D7_PORT, D7_PIN)) ? 0x80 : 0x00;
	tst REG[0x4],64
	jz L43
	mov [X+16],-128
	mov [X+15],0
	xjmp L44
L43:
	mov [X+16],0
	mov [X+15],0
L44:
	mov REG[0xd0],>__r0
	mov A,[X+0]
	mov [__r1],A
	mov [__r0],0
	mov A,[X+16]
	or [__r1],A
	mov A,[X+15]
	or [__r0],A
	mov A,[__r1]
	mov [X+0],A
	.dbline 102
; 	
; 	return indata;
	mov A,[X+0]
	.dbline -2
L20:
	add SP,-17
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l indata 0 c
	.dbend
	.dbfunc e apu_set_address _apu_set_address fV
;        address -> X-5
_apu_set_address::
	.dbline -1
	push X
	mov X,SP
	.dbline 106
; }
; 
; void apu_set_address(int address)
; {
	.dbline 119
; 	//GO_OUTPUT(PA0_PORT, PA0_PIN);
; 	//GO_OUTPUT(PA1_PORT, PA1_PIN);
; 
; #ifdef ADDR_DEBUG
; 
; 	UART_CPutString("Address = 0x");
; 	UART_PutSHexByte(address);
; 	UART_PutCRLF();
; 	UART_FLUSH();
; #endif
; 
; 	// this is gross: set address lines
; 	if (address & 0x02) // PA0
	mov REG[0xd0],>__r0
	mov A,[X-4]
	and A,2
	mov [__r1],A
	mov A,[X-5]
	and A,0
	cmp A,0
	jnz X0
	cmp [__r1],0
	jz L46
X0:
	.dbline 120
; 	{
	.dbline 121
; 		SET_DATA(PA0_PORT, PA0_PIN);
	or REG[0x8],1
	.dbline 127
; #ifdef ADDR_DEBUG
; 		UART_CPutString("PA0 up");
; 		UART_PutCRLF();
; 		UART_FLUSH();
; #endif
; }
	xjmp L47
L46:
	.dbline 129
; 	else
; 	{
	.dbline 135
; #ifdef ADDR_DEBUG
; 		UART_CPutString("PA0 down");
; 		UART_PutCRLF();
; 		UART_FLUSH();
; #endif
; 		CLR_DATA(PA0_PORT, PA0_PIN);
	and REG[0x8],-2
	.dbline 136
; 	}
L47:
	.dbline 138
; 	
; 	if (address & 0x01) // PA1
	mov REG[0xd0],>__r0
	mov A,[X-4]
	and A,1
	mov [__r1],A
	mov A,[X-5]
	and A,0
	cmp A,0
	jnz X1
	cmp [__r1],0
	jz L48
X1:
	.dbline 139
; 	{
	.dbline 145
; #ifdef ADDR_DEBUG
; 		UART_CPutString("PA1 up");
; 		UART_PutCRLF();
; 		UART_FLUSH();
; #endif
; 		SET_DATA(PA1_PORT, PA1_PIN);
	or REG[ 0],4
	.dbline 146
; 	}
	xjmp L49
L48:
	.dbline 148
	.dbline 154
	and REG[ 0],-5
	.dbline 155
L49:
	.dbline -2
	.dbline 156
; 	else
; 	{
; #ifdef ADDR_DEBUG
; 		UART_CPutString("PA1 down");
; 		UART_PutCRLF();
; 		UART_FLUSH();
; #endif
; 		CLR_DATA(PA1_PORT, PA1_PIN);
; 	}
; }
L45:
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l address -5 I
	.dbend
	.dbfunc e apu_init _apu_init fV
_apu_init::
	.dbline -1
	.dbline 159
; 
; void apu_init(void)
; {
	.dbline 160
; 	GO_OUTPUT(_RESET_PORT, _RESET_PIN);
	or REG[0x3],16
	.dbline 160
	or F,0x10  ; iopage = 1
	and REG[0x1],-17
	and F,0xEF ; iopage = 0
	.dbline 160
	or F,0x10  ; iopage = 1
	or REG[ 0],16
	and F,0xEF ; iopage = 0
	.dbline 161
; 	GO_OUTPUT(_RD_PORT, _RD_PIN);
	or REG[0xb],-128
	.dbline 161
	or F,0x10  ; iopage = 1
	and REG[0x9],127
	and F,0xEF ; iopage = 0
	.dbline 161
	or F,0x10  ; iopage = 1
	or REG[0x8],-128
	and F,0xEF ; iopage = 0
	.dbline 162
; 	GO_OUTPUT(_WR_PORT, _WR_PIN);
	or REG[0xb],4
	.dbline 162
	or F,0x10  ; iopage = 1
	and REG[0x9],-5
	and F,0xEF ; iopage = 0
	.dbline 162
	or F,0x10  ; iopage = 1
	or REG[0x8],4
	and F,0xEF ; iopage = 0
	.dbline 164
; 	
; 	GO_OUTPUT(PA0_PORT, PA0_PIN);
	or REG[0xb],1
	.dbline 164
	or F,0x10  ; iopage = 1
	and REG[0x9],-2
	and F,0xEF ; iopage = 0
	.dbline 164
	or F,0x10  ; iopage = 1
	or REG[0x8],1
	and F,0xEF ; iopage = 0
	.dbline 165
; 	GO_OUTPUT(PA1_PORT, PA1_PIN);
	or REG[0x3],4
	.dbline 165
	or F,0x10  ; iopage = 1
	and REG[0x1],-5
	and F,0xEF ; iopage = 0
	.dbline 165
	or F,0x10  ; iopage = 1
	or REG[ 0],4
	and F,0xEF ; iopage = 0
	.dbline 167
; 	
; 	go_data_output();
	xcall _go_data_output
	.dbline 169
; 	
; 	CLR_DATA(_RESET_PORT, _RESET_PIN); // hold in reset
	and REG[ 0],-17
	.dbline 170
; 	SET_DATA(_RD_PORT, _RD_PIN);
	or REG[0x8],-128
	.dbline 171
; 	SET_DATA(_WR_PORT, _WR_PIN);
	or REG[0x8],4
	.dbline -2
	.dbline 172
; }
L50:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e apu_shutdown _apu_shutdown fV
_apu_shutdown::
	.dbline -1
	.dbline 175
; 
; void apu_shutdown(void)
; {
	.dbline 176
; 	CLR_DATA(_RESET_PORT, _RESET_PIN); // hold in reset
	and REG[ 0],-17
	.dbline 177
; 	SET_DATA(_RD_PORT, _RD_PIN);
	or REG[0x8],-128
	.dbline 178
; 	SET_DATA(_WR_PORT, _WR_PIN);
	or REG[0x8],4
	.dbline -2
	.dbline 179
; }
L51:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e apu_reset _apu_reset fV
;              i -> X+0
_apu_reset::
	.dbline -1
	push X
	mov X,SP
	add SP,2
	.dbline 182
; 
; void apu_reset(void)
; {
	.dbline 185
; 	int i;
; 	
; 	SET_DATA(_RD_PORT, _RD_PIN);
	or REG[0x8],-128
	.dbline 186
; 	SET_DATA(_WR_PORT, _WR_PIN);
	or REG[0x8],4
	.dbline 188
; 	
; 	CLR_DATA(_RESET_PORT, _RESET_PIN); // put in reset
	and REG[ 0],-17
	.dbline 190
; 	
; 	for(i=0; i<RESET_DELAY; i++)
	mov [X+1],0
	mov [X+0],0
L53:
	.dbline 191
	.dbline 191
L54:
	.dbline 190
	inc [X+1]
	adc [X+0],0
	.dbline 190
	mov A,[X+1]
	sub A,76
	mov A,[X+0]
	xor A,-128
	sbb A,(29 ^ 0x80)
	jc L53
X2:
	.dbline 193
; 		{ }
; 	
; 	SET_DATA(_RESET_PORT, _RESET_PIN); // exit from reset
	or REG[ 0],16
	.dbline 195
; 	
; 	for(i=0; i<RESET_DELAY; i++)
	mov [X+1],0
	mov [X+0],0
L57:
	.dbline 196
	.dbline 196
L58:
	.dbline 195
	inc [X+1]
	adc [X+0],0
	.dbline 195
	mov A,[X+1]
	sub A,76
	mov A,[X+0]
	xor A,-128
	sbb A,(29 ^ 0x80)
	jc L57
X3:
	.dbline -2
	.dbline 198
; 		{ }
; 	
; }
L52:
	add SP,-2
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l i 0 I
	.dbend
	.dbfunc e apu_write _apu_write fV
;              i -> X+0
;           data -> X-6
;        address -> X-5
_apu_write::
	.dbline -1
	push X
	mov X,SP
	add SP,2
	.dbline 201
; 
; void apu_write(int address, unsigned char data)
; {
	.dbline 203
; 	int i;
; 	go_data_output();
	xcall _go_data_output
	.dbline 205
; 	
; 	apu_set_address(address);
	mov A,[X-5]
	push A
	mov A,[X-4]
	push A
	xcall _apu_set_address
	.dbline 207
; 	
; 	apu_put_data(data);
	mov A,[X-6]
	push A
	xcall _apu_put_data
	add SP,-3
	.dbline 209
; 	
; 	SET_DATA(_WR_PORT, _WR_PIN);
	or REG[0x8],4
	.dbline 210
; 	SET_DATA(_RD_PORT, _RD_PIN);
	or REG[0x8],-128
	.dbline 213
; 	
; 	// strobe write pin
; 	CLR_DATA(_WR_PORT, _WR_PIN);
	and REG[0x8],-5
	.dbline 214
; 	for(i=0; i<WRITE_DELAY; i++)
	mov [X+1],0
	mov [X+0],0
L62:
	.dbline 215
	.dbline 215
L63:
	.dbline 214
	inc [X+1]
	adc [X+0],0
	.dbline 214
	mov A,[X+1]
	sub A,10
	mov A,[X+0]
	xor A,-128
	sbb A,(0 ^ 0x80)
	jc L62
X4:
	.dbline 216
; 		{ }
; 	SET_DATA(_WR_PORT, _WR_PIN);
	or REG[0x8],4
	.dbline -2
	.dbline 218
; 	
; }
L61:
	add SP,-2
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l i 0 I
	.dbsym l data -6 c
	.dbsym l address -5 I
	.dbend
	.dbfunc e apu_read _apu_read fc
;           data -> X+2
;              i -> X+0
;        address -> X-5
_apu_read::
	.dbline -1
	push X
	mov X,SP
	add SP,3
	.dbline 221
; 
; unsigned char apu_read(int address)
; {
	.dbline 225
; 	unsigned char data;
; 	int i;
; 	
; 	go_data_input();
	xcall _go_data_input
	.dbline 226
; 	data = apu_get_data(); // dummy read debugging
	xcall _apu_get_data
	mov REG[0xd0],>__r0
	mov [X+2],A
	.dbline 228
; 	
; 	apu_set_address(address);
	mov A,[X-5]
	push A
	mov A,[X-4]
	push A
	xcall _apu_set_address
	add SP,-2
	.dbline 230
; 	
; 	SET_DATA(_RD_PORT, _RD_PIN);
	or REG[0x8],-128
	.dbline 231
; 	SET_DATA(_WR_PORT, _WR_PIN);
	or REG[0x8],4
	.dbline 234
; 	
; 	// strobe read pin
; 	CLR_DATA(_RD_PORT, _RD_PIN);
	and REG[0x8],127
	.dbline 236
; 	
; 	for(i=0; i<READ_DELAY; i++)
	mov [X+1],0
	mov [X+0],0
L67:
	.dbline 237
	.dbline 237
L68:
	.dbline 236
	inc [X+1]
	adc [X+0],0
	.dbline 236
	mov A,[X+1]
	sub A,10
	mov A,[X+0]
	xor A,-128
	sbb A,(0 ^ 0x80)
	jc L67
X5:
	.dbline 239
; 		{ }
; 	
; 	data = apu_get_data();
	xcall _apu_get_data
	mov REG[0xd0],>__r0
	mov [X+2],A
	.dbline 240
; 	SET_DATA(_RD_PORT, _RD_PIN);
	or REG[0x8],-128
	.dbline 242
; 	
; 	return data;
	mov A,[X+2]
	.dbline -2
L66:
	add SP,-3
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l data 2 c
	.dbsym l i 0 I
	.dbsym l address -5 I
	.dbend
	.dbfunc e sys_init _sys_init fV
_sys_init::
	.dbline -1
	.dbline 246
; }
; 
; void sys_init(void)
; {
	.dbline 247
; 	apu_init();
	xcall _apu_init
	.dbline -2
	.dbline 248
; }
L71:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e start_rx _start_rx fV
;           addr -> X+6
;           addr -> X+6
;         not_ok -> X+4
;            msg -> X+2
;            len -> X+0
_start_rx::
	.dbline -1
	push X
	mov X,SP
	add SP,8
	.dbline 251
; 
; void start_rx(void)
; {
	.dbline 254
; 	unsigned char msg[2];
; 	int len;
; 	int not_ok = 0;
	mov [X+5],0
	mov [X+4],0
	.dbline 256
; 	
;     for(;;)
L73:
	.dbline 257
;     {
	.dbline 258
; 		len = 0;
	mov [X+1],0
	mov [X+0],0
	.dbline 259
; 		if (not_ok)
	cmp [X+4],0
	jnz X8
	cmp [X+5],0
	jz L77
X8:
	.dbline 260
; 		{
	.dbline 261
; 			UART_CPutString("N");
	push X
	mov A,>L79
	push A
	mov A,<L79
	mov X,A
	pop A
	xcall _UART_CPutString
	pop X
	.dbline 262
; 			not_ok = 0;
	mov [X+5],0
	mov [X+4],0
	.dbline 263
; 		}
	xjmp L82
L77:
	.dbline 265
; 		else
; 		{
	.dbline 266
; 			UART_CPutString("O");
	push X
	mov A,>L80
	push A
	mov A,<L80
	mov X,A
	pop A
	xcall _UART_CPutString
	pop X
	.dbline 267
; 		}
L81:
	.dbline 269
	.dbline 269
L82:
	.dbline 269
	push X
	xcall _UART_bReadTxStatus
	mov REG[0xd0],>__r0
	pop X
	mov [__r0],A
	tst [__r0],16
	jz L81
	.dbline 269
	push X
	xcall _UART_bReadTxStatus
	mov REG[0xd0],>__r0
	pop X
L84:
	.dbline 269
	.dbline 269
L85:
	.dbline 269
; 		//UART_PutCRLF();
; 		UART_FLUSH();
	push X
	xcall _UART_bReadTxStatus
	mov REG[0xd0],>__r0
	pop X
	mov [__r0],A
	tst [__r0],32
	jz L84
	.dbline 269
	.dbline 272
; 		
; 		do
; 		{
L90:
	.dbline 274
	.dbline 276
L91:
	.dbline 273
;  			while(!(UART_bReadRxStatus() & 0x08))
	push X
	xcall _UART_bReadRxStatus
	mov REG[0xd0],>__r0
	pop X
	mov [__r0],A
	tst [__r0],8
	jz L90
	.dbline 277
;  			{
; 	 			/* wait for data */
;  			}
;     		msg[len++] = UART_bReadRxData();
	mov A,[X+1]
	mov [__r1],A
	mov A,[X+0]
	mov [__r0],A
	mov A,[__r1]
	mov [X+7],A
	mov A,[__r0]
	mov [X+6],A
	mov A,[__r1]
	add A,1
	mov [X+1],A
	mov A,[__r0]
	adc A,0
	mov [X+0],A
	push X
	xcall _UART_bReadRxData
	mov REG[0xd0],>__r0
	pop X
	mov [__r0],A
	mov [__r2],1
	mov [__r3],X
	add [__r3],2
	mov A,[X+7]
	add A,[__r3]
	mov [__r3],A
	mov A,[X+6]
	adc A,[__r2]
	mov REG[0xd5],A
	mov A,[__r0]
	mvi [__r3],A
	.dbline 279
L88:
	.dbline 279
; 			
; 		} while(!(
	cmp [X+0],0
	jnz L94
	cmp [X+1],1
	jnz L94
X9:
	mov REG[0xd0],>__r0
	mov A,[X+2]
	and A,-4
	cmp A,-88
	jnz L93
L94:
	cmp [X+0],0
	jnz L91
	cmp [X+1],2
	jnz L91
X10:
L93:
	.dbline 284
; 				((len == 1) && ((msg[0] & 0xfc) != 0xa8)) ||
; 				(len == 2)
; 				));
; 		
; 		if ((msg[0] & 0xfc) == 0xa8)
	mov REG[0xd0],>__r0
	mov A,[X+2]
	and A,-4
	cmp A,-88
	jnz L95
	.dbline 285
; 		{
	.dbline 287
; 			// write
; 			char addr = msg[0] & 0x3;
	mov A,[X+2]
	and A,3
	mov [X+6],A
	.dbline 289
; 			
; 			apu_write(addr, msg[1]);
	mov A,[X+3]
	push A
	mov A,[X+6]
	mov [__r1],A
	mov A,0
	push A
	mov A,[__r1]
	push A
	xcall _apu_write
	add SP,-3
	.dbline 290
; 		}
	xjmp L73
L95:
	.dbline 291
; 		else if ((msg[0] & 0xfc) == 0xd4)
	mov REG[0xd0],>__r0
	mov A,[X+2]
	and A,-4
	cmp A,-44
	jnz L98
	.dbline 292
; 		{
	.dbline 294
; 			// read
; 			char addr = msg[0] & 0x3;
	mov A,[X+2]
	and A,3
	mov [X+6],A
	.dbline 295
; 			UART_PutChar(apu_read(addr));
	mov A,[X+6]
	mov [__r1],A
	mov A,0
	push A
	mov A,[__r1]
	push A
	xcall _apu_read
	add SP,-2
	mov REG[0xd0],>__r0
	push X
	xcall _UART_PutChar
	pop X
	.dbline 300
; 			//UART_PutChar(0x60 | addr);
; 			//UART_PutChar((unsigned char)0x69);
; 			//UART_FLUSH();
; 			//UART_PutCRLF();
; 		}
	xjmp L73
L98:
	.dbline 302
; 		else
; 		{
	.dbline 303
; 			switch(msg[0])
	mov A,[X+2]
	mov [X+7],A
	mov [X+6],0
	mov A,[X+7]
	sub A,73
	mov REG[0xd0],>__r0
	mov [__rY],A
	mov A,[X+6]
	xor A,-128
	sbb A,(0 ^ 0x80)
	jc L100
	or A,[__rY]
	jz L103
X11:
L106:
	cmp [X+6],0
	jnz X12
	cmp [X+7],82
	jz L104
X12:
	cmp [X+6],0
	jnz X13
	cmp [X+7],83
	jz L105
X13:
	xjmp L100
X6:
	.dbline 304
; 			{
L103:
	.dbline 306
; 				case 'I':
; 					apu_init();
	xcall _apu_init
	.dbline 307
; 					break;
	xjmp L73
L104:
	.dbline 309
; 				case 'R':
; 					apu_reset();
	xcall _apu_reset
	.dbline 310
; 					break;
	xjmp L73
L105:
	.dbline 312
; 				case 'S':
; 					apu_shutdown();
	xcall _apu_shutdown
	.dbline 313
; 					break;
	xjmp L73
L100:
	.dbline 315
	mov [X+5],1
	mov [X+4],0
	.dbline 316
	.dbline 318
	.dbline 321
	.dbline 256
	.dbline 256
	xjmp L73
X7:
	.dbline -2
L72:
	add SP,-8
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l addr 6 c
	.dbsym l addr 6 c
	.dbsym l not_ok 4 I
	.dbsym l msg 2 A[2:2]c
	.dbsym l len 0 I
	.dbend
	.dbfunc e main _main fV
;              i -> X+0
_main::
	.dbline -1
	push X
	mov X,SP
	add SP,2
	.dbline 325
; 				default:
; 					not_ok = 1;
; 					break;
; 			}
; 		}
; 		
;     	// UART_PutChar (... )
;     }
; }
; 
; void main()
; {
	.dbline 328
; 	int i;
; 	
; 	M8C_EnableGInt;
		or  F, 01h

	.dbline 330
; 	
;     LED_1_Start();
	push X
	xcall _LED_1_Start
	.dbline 331
;     LED_1_On();
	xcall _LED_1_On
	.dbline 333
;     
;     UART_Start(UART_PARITY_NONE);
	mov A,0
	xcall _UART_Start
	pop X
	.dbline 335
;     
; 	sys_init();
	xcall _sys_init
	.dbline 351
; 
; #ifdef ADDR_DEBUG
; 	for(;;)
; 	{
; 		int j;
; 		for(i=0; i<4; i++)
; 		{
; 			apu_set_address(i);
; 			//PRT2DR |= 0x01;
; 			for(j=0; j<i*1000;  j++)
; 				;
; 		}
; 	}
; #endif	
; 	
; 	start_rx();
	xcall _start_rx
	.dbline -2
	.dbline 352
; }
L107:
	add SP,-2
	pop X
	.dbline 0 ; func end
	jmp .
	.dbsym l i 0 I
	.dbend
	.area lit(rom, con, rel)
L80:
	.byte 'O,0
L79:
	.byte 'N,0
