//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "apu_psoc.h"

//#define ADDR_DEBUG

#define UART_FLUSH()          while (!(UART_bReadTxStatus() & UART_TX_BUFFER_EMPTY)) \
                              { /* wait for buffer empty */ }                    \
                              UART_bReadTxStatus(); /* clear TX_COMPLETE */        \
                              while (!(UART_bReadTxStatus() & UART_TX_COMPLETE))     \
                              { /* wait for TX_COMPLETE */ }



void go_data_output(void)
{
	GO_OUTPUT(D0_PORT, D0_PIN);
	GO_OUTPUT(D1_PORT, D1_PIN);
	GO_OUTPUT(D2_PORT, D2_PIN);
	GO_OUTPUT(D3_PORT, D3_PIN);
	GO_OUTPUT(D4_PORT, D4_PIN);
	GO_OUTPUT(D5_PORT, D5_PIN);
	GO_OUTPUT(D6_PORT, D6_PIN);
	GO_OUTPUT(D7_PORT, D7_PIN);
}

void go_data_input(void)
{
	GO_INPUT(D0_PORT, D0_PIN);
	GO_INPUT(D1_PORT, D1_PIN);
	GO_INPUT(D2_PORT, D2_PIN);
	GO_INPUT(D3_PORT, D3_PIN);
	GO_INPUT(D4_PORT, D4_PIN);
	GO_INPUT(D5_PORT, D5_PIN);
	GO_INPUT(D6_PORT, D6_PIN);
	GO_INPUT(D7_PORT, D7_PIN);
}

void apu_put_data(unsigned char data)
{
	// this is gross!!!
	
	if (data & 0x01)
		SET_DATA(D0_PORT, D0_PIN);
	else
		CLR_DATA(D0_PORT, D0_PIN);
	
	if (data & 0x02)
		SET_DATA(D1_PORT, D1_PIN);
	else
		CLR_DATA(D1_PORT, D1_PIN);
	
	if (data & 0x04)
		SET_DATA(D2_PORT, D2_PIN);
	else
		CLR_DATA(D2_PORT, D2_PIN);
	
	if (data & 0x08)
		SET_DATA(D3_PORT, D3_PIN);
	else
		CLR_DATA(D3_PORT, D3_PIN);
	
	if (data & 0x10)
		SET_DATA(D4_PORT, D4_PIN);
	else
		CLR_DATA(D4_PORT, D4_PIN);
	
	if (data & 0x20)
		SET_DATA(D5_PORT, D5_PIN);
	else
		CLR_DATA(D5_PORT, D5_PIN);
	
	if (data & 0x40)
		SET_DATA(D6_PORT, D6_PIN);
	else
		CLR_DATA(D6_PORT, D6_PIN);
	
	if (data & 0x80)
		SET_DATA(D7_PORT, D7_PIN);
	else
		CLR_DATA(D7_PORT, D7_PIN);
}

unsigned char apu_get_data(void)
{
	// this is also pretty ugly
	unsigned char indata = 0x00;
	
	indata |= (GET_DATA(D6_PORT, D6_PIN)) ? 0x40 : 0x00;
	indata |= (GET_DATA(D0_PORT, D0_PIN)) ? 0x01 : 0x00;
	indata |= (GET_DATA(D1_PORT, D1_PIN)) ? 0x02 : 0x00;
	indata |= (GET_DATA(D2_PORT, D2_PIN)) ? 0x04 : 0x00;
	indata |= (GET_DATA(D3_PORT, D3_PIN)) ? 0x08 : 0x00;
	indata |= (GET_DATA(D4_PORT, D4_PIN)) ? 0x10 : 0x00;
	indata |= (GET_DATA(D5_PORT, D5_PIN)) ? 0x20 : 0x00;
	indata |= (GET_DATA(D7_PORT, D7_PIN)) ? 0x80 : 0x00;
	
	return indata;
}

void apu_set_address(int address)
{
	//GO_OUTPUT(PA0_PORT, PA0_PIN);
	//GO_OUTPUT(PA1_PORT, PA1_PIN);

#ifdef ADDR_DEBUG

	UART_CPutString("Address = 0x");
	UART_PutSHexByte(address);
	UART_PutCRLF();
	UART_FLUSH();
#endif

	// this is gross: set address lines
	if (address & 0x02) // PA0
	{
		SET_DATA(PA0_PORT, PA0_PIN);
#ifdef ADDR_DEBUG
		UART_CPutString("PA0 up");
		UART_PutCRLF();
		UART_FLUSH();
#endif
}
	else
	{
#ifdef ADDR_DEBUG
		UART_CPutString("PA0 down");
		UART_PutCRLF();
		UART_FLUSH();
#endif
		CLR_DATA(PA0_PORT, PA0_PIN);
	}
	
	if (address & 0x01) // PA1
	{
#ifdef ADDR_DEBUG
		UART_CPutString("PA1 up");
		UART_PutCRLF();
		UART_FLUSH();
#endif
		SET_DATA(PA1_PORT, PA1_PIN);
	}
	else
	{
#ifdef ADDR_DEBUG
		UART_CPutString("PA1 down");
		UART_PutCRLF();
		UART_FLUSH();
#endif
		CLR_DATA(PA1_PORT, PA1_PIN);
	}
}

void apu_init(void)
{
	GO_OUTPUT(_RESET_PORT, _RESET_PIN);
	GO_OUTPUT(_RD_PORT, _RD_PIN);
	GO_OUTPUT(_WR_PORT, _WR_PIN);
	
	GO_OUTPUT(PA0_PORT, PA0_PIN);
	GO_OUTPUT(PA1_PORT, PA1_PIN);
	
	go_data_output();
	
	CLR_DATA(_RESET_PORT, _RESET_PIN); // hold in reset
	SET_DATA(_RD_PORT, _RD_PIN);
	SET_DATA(_WR_PORT, _WR_PIN);
}

void apu_shutdown(void)
{
	CLR_DATA(_RESET_PORT, _RESET_PIN); // hold in reset
	SET_DATA(_RD_PORT, _RD_PIN);
	SET_DATA(_WR_PORT, _WR_PIN);
}

void apu_reset(void)
{
	int i;
	
	SET_DATA(_RD_PORT, _RD_PIN);
	SET_DATA(_WR_PORT, _WR_PIN);
	
	CLR_DATA(_RESET_PORT, _RESET_PIN); // put in reset
	
	for(i=0; i<RESET_DELAY; i++)
		{ }
	
	SET_DATA(_RESET_PORT, _RESET_PIN); // exit from reset
	
	for(i=0; i<RESET_DELAY; i++)
		{ }
	
}

void apu_write(int address, unsigned char data)
{
	int i;
	go_data_output();
	
	apu_set_address(address);
	
	apu_put_data(data);
	
	SET_DATA(_WR_PORT, _WR_PIN);
	SET_DATA(_RD_PORT, _RD_PIN);
	
	// strobe write pin
	CLR_DATA(_WR_PORT, _WR_PIN);
	for(i=0; i<WRITE_DELAY; i++)
		{ }
	SET_DATA(_WR_PORT, _WR_PIN);
	
}

unsigned char apu_read(int address)
{
	unsigned char data;
	int i;
	
	go_data_input();
	data = apu_get_data(); // dummy read debugging
	
	apu_set_address(address);
	
	SET_DATA(_RD_PORT, _RD_PIN);
	SET_DATA(_WR_PORT, _WR_PIN);
	
	// strobe read pin
	CLR_DATA(_RD_PORT, _RD_PIN);
	
	for(i=0; i<READ_DELAY; i++)
		{ }
	
	data = apu_get_data();
	SET_DATA(_RD_PORT, _RD_PIN);
	
	return data;
}

void sys_init(void)
{
	apu_init();
}

void start_rx(void)
{
	unsigned char msg[2];
	int len;
	int not_ok = 0;
	
    for(;;)
    {
		len = 0;
		if (not_ok)
		{
			UART_CPutString("N");
			not_ok = 0;
		}
		else
		{
			UART_CPutString("O");
		}
		//UART_PutCRLF();
		UART_FLUSH();
		
		do
		{
 			while(!(UART_bReadRxStatus() & 0x08))
 			{
	 			/* wait for data */
 			}
    		msg[len++] = UART_bReadRxData();
			
		} while(!(
				((len == 1) && ((msg[0] & 0xfc) != 0xa8)) ||
				(len == 2)
				));
		
		if ((msg[0] & 0xfc) == 0xa8)
		{
			// write
			char addr = msg[0] & 0x3;
			
			apu_write(addr, msg[1]);
		}
		else if ((msg[0] & 0xfc) == 0xd4)
		{
			// read
			char addr = msg[0] & 0x3;
			UART_PutChar(apu_read(addr));
			//UART_PutChar(0x60 | addr);
			//UART_PutChar((unsigned char)0x69);
			//UART_FLUSH();
			//UART_PutCRLF();
		}
		else
		{
			switch(msg[0])
			{
				case 'I':
					apu_init();
					break;
				case 'R':
					apu_reset();
					break;
				case 'S':
					apu_shutdown();
					break;
				default:
					not_ok = 1;
					break;
			}
		}
		
    	// UART_PutChar (... )
    }
}

void main()
{
	int i;
	
	M8C_EnableGInt;
	
    LED_1_Start();
    LED_1_On();
    
    UART_Start(UART_PARITY_NONE);
    
	sys_init();

#ifdef ADDR_DEBUG
	for(;;)
	{
		int j;
		for(i=0; i<4; i++)
		{
			apu_set_address(i);
			//PRT2DR |= 0x01;
			for(j=0; j<i*1000;  j++)
				;
		}
	}
#endif	
	
	start_rx();
}
