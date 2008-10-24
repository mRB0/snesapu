  ROM 31% full. 2451 bytes used (does not include absolute areas).
  RAM 9% full. 25 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0004 =      4. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0154  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0154   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0154  __func_lit_start
       0156  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0156   0112 =    274. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0156  LoadConfigTBL_snesapu
       025B  LoadConfigInit
       025B  _LoadConfigInit
       0262  LoadConfig_snesapu
       0262  _LoadConfig_snesapu
       0268  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0268   029E =    670. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0268  _UART_TX_ISR
       0269  _UART_RX_ISR
       02DD  _UART_EnableInt
       02DD  UART_EnableInt
       02E4  _UART_DisableInt
       02E4  UART_DisableInt
       02EB  _UART_SetTxIntMode
       02EB  UART_SetTxIntMode
       02FD  UART_Start
       02FD  _UART_Start
       0306  _UART_Stop
       0306  UART_Stop
       030D  UART_SendData
       030D  _UART_SendData
       0310  bUART_ReadTxStatus
       0310  _bUART_ReadTxStatus
       0310  UART_bReadTxStatus
       0310  _UART_bReadTxStatus
       0313  bUART_ReadRxData
       0313  _bUART_ReadRxData
       0313  _UART_bReadRxData
       0313  UART_bReadRxData
       0316  bUART_ReadRxStatus
       0316  _bUART_ReadRxStatus
       0316  _UART_bReadRxStatus
       0316  UART_bReadRxStatus
       0319  _UART_TxIntMode
       0319  UART_TxIntMode
       032C  UART_IntCntl
       032C  _UART_IntCntl
       0357  _UART_PutSHexByte
       0357  UART_PutSHexByte
       036A  _UART_PutSHexInt
       036A  UART_PutSHexInt
       0371  _UART_PutChar
       0371  UART_PutChar
       0379  UART_cGetChar
       0379  _UART_cGetChar
       0381  _UART_cReadChar
       0381  UART_cReadChar
       0398  UART_iReadChar
       0398  _UART_iReadChar
       03AE  UART_PutString
       03AE  _UART_PutString
       03C0  UART_Write
       03C0  _UART_Write
       03E8  UART_CWrite
       03E8  _UART_CWrite
       0414  _UART_CPutString
       0414  UART_CPutString
       0426  _UART_PutCRLF
       0426  UART_PutCRLF
       042F  UART_CmdReset
       042F  _UART_CmdReset
       0445  _UART_bCmdCheck
       0445  UART_bCmdCheck
       044D  _UART_bErrCheck
       044D  UART_bErrCheck
       0458  UART_bCmdLength
       0458  _UART_bCmdLength
       045E  UART_szGetParam
       045E  _UART_szGetParam
       04BD  UART_szGetRestOfParams
       04BD  _UART_szGetRestOfParams
       04C8  _LED_1_On
       04C8  LED_1_On
       04CC  _LED_1_Stop
       04CC  LED_1_Stop
       04CC  LED_1_Start
       04CC  _LED_1_Off
       04CC  LED_1_Off
       04CC  _LED_1_Start
       04CE  LED_1_Switch
       04CE  _LED_1_Switch
       04E6  _LED_1_Invert
       04E6  LED_1_Invert
       04F5  LED_1_GetState
       04F5  _LED_1_GetState
       0506  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0506   05DD =   1501. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0506  _go_data_output
       0506  __text_start
       058F  _go_data_input
       0630  _apu_put_data
       069C  _apu_get_data
       07F1  _apu_set_address
       0831  _apu_init
       0892  _apu_shutdown
       089C  _apu_reset
       08DE  _apu_write
       091A  _apu_read
       0961  _sys_init
       0964  _start_rx
       0AC7  _main
       0AE5  __xidata_end
       0AE3  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0125 =    293. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0122  bGetPowerSetting
       0122  _bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  UART_fStatus
       0000  _UART_fStatus
       0001  _UART_bRxCnt
       0001  UART_bRxCnt
       0002  _Port_0_Data_SHADE
       0002  NO_SHADOW
       0002  _NO_SHADOW
       0002  Port_0_Data_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        UART_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  UART_aRxBuffer
       0003  _UART_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0013   0005 =      5. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0013  __rY
       0014  __r3
       0015  __r2
       0016  __r1
       0017  __r0

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ uartint.asm, uart.asm, psocconfigtbl.asm, psocconfig.asm, led_1.asm, rY.asm, r3.asm, r2.asm, r1.asm ]
[ r0.asm ]

User Base Address Definitions

lit = 0x150
data = 0x0
SSCParmBlk:0x00F7.0x00FF
InterruptRAM = 0x0
virtual_registers = 0x13
snesapu_RAM

