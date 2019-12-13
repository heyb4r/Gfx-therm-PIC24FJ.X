/*******************************************************************************
  System Specific Initializations

  Company:
    Microchip Technology Inc.

  File Name:
    system.c

  Summary:
    System level initializations for the specific Microchip Development Board used.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// Section: Includes
// *****************************************************************************
#include <xc.h>
#include <stdlib.h>
#include <system.h>

#include "driver/spi/drv_spi.h"
#include "driver/gfx/drv_gfx_display.h"
#include "driver/nvm/drv_nvm_flash_spi_sst25vf016.h"
#include "driver/nvm/nvm_flash_spi_sst26vf0xxb.h"
#include "driver/touch_screen/drv_touch_screen.h"


// typedef for initiazation function pointer
typedef void (*FLASH_INIT_FUNC     )(DRV_SPI_INIT_DATA *);

// typedef for read function pointer
typedef void (*FLASH_READ_FUNC     )(uint32_t, uint8_t*, uint16_t);

// typedef for write function pointer
typedef uint8_t (*FLASH_WRITE_FUNC    )(uint32_t, uint8_t*, uint16_t);

// typedef for sector erase function pointer
typedef void (*FLASH_CHIPERASE_FUNC     )(void);

// *****************************************************************************
// Configuration bits
// *****************************************************************************
//// PIC24FJ256GA110 Configuration Bit Settings
//
//// CONFIG3
//#pragma config WPFP = WPFP511           // Write Protection Flash Page Segment Boundary (Highest Page (same as page 170))
//#pragma config WPDIS = WPDIS            // Segment Write Protection Disable bit (Segmented code protection disabled)
//#pragma config WPCFG = WPCFGDIS         // Configuration Word Code Page Protection Select bit (Last page(at the top of program memory) and Flash configuration words are not protected)
//#pragma config WPEND = WPENDMEM         // Segment Write Protection End Page Select bit (Write Protect from WPFP to the last page of memory)
//
//// CONFIG2
//#pragma config POSCMOD = XT             // Primary Oscillator Select (XT oscillator mode selected)
//#pragma config I2C2SEL = PRI            // I2C2 Pin Select bit (Use Default SCL2/SDA2 pins for I2C2)
//#pragma config IOL1WAY = ON             // IOLOCK One-Way Set Enable bit (Write RP Registers Once)
//#pragma config OSCIOFNC = OFF           // Primary Oscillator Output Function (OSCO functions as CLKO (FOSC/2))
//#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Both Clock Switching and Fail-safe Clock Monitor are disabled)
//#pragma config FNOSC = PRIPLL           // Oscillator Select (Primary oscillator (XT, HS, EC) with PLL module (XTPLL,HSPLL, ECPLL))
//#pragma config IESO = ON                // Internal External Switch Over Mode (IESO mode (Two-speed start-up) enabled)
//
//// CONFIG1
//#pragma config WDTPS = PS32768          // Watchdog Timer Postscaler (1:32,768)
//#pragma config FWPSA = PR128            // WDT Prescaler (Prescaler ratio of 1:128)
//#pragma config WINDIS = ON              // Watchdog Timer Window (Windowed Watchdog Timer enabled; FWDTEN must be 1)
//#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog Timer is disabled)
//#pragma config ICS = PGx2               // Comm Channel Select (Emulator functions are shared with PGEC2/PGED2)
//#pragma config GWRP = OFF               // General Code Segment Write Protect (Writes to program memory are allowed)
//#pragma config GCP = OFF                // General Code Segment Code Protect (Code protection is disabled)
//#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG port is disabled)


// Configuration bits: selected in the GUI

// FSEC
#pragma config BWRP = OFF    //Boot Segment Write-Protect bit->Boot Segment may be written
#pragma config BSS = DISABLED    //Boot Segment Code-Protect Level bits->No Protection (other than BWRP)
#pragma config BSEN = OFF    //Boot Segment Control bit->No Boot Segment
#pragma config GWRP = OFF    //General Segment Write-Protect bit->General Segment may be written
#pragma config GSS = DISABLED    //General Segment Code-Protect Level bits->No Protection (other than GWRP)
#pragma config CWRP = OFF    //Configuration Segment Write-Protect bit->Configuration Segment may be written
#pragma config CSS = DISABLED    //Configuration Segment Code-Protect Level bits->No Protection (other than CWRP)
#pragma config AIVTDIS = OFF    //Alternate Interrupt Vector Table bit->Disabled AIVT

// FBSLIM
#pragma config BSLIM = 8191    //Boot Segment Flash Page Address Limit bits->8191

// FOSCSEL
#pragma config FNOSC = PRIPLL    //Oscillator Source Selection->Primary Oscillator with PLL module (XT + PLL, HS + PLL, EC + PLL)
#pragma config PLLMODE = PLL96DIV2    //PLL Mode Selection->96 MHz PLL. (8 MHz input)
#pragma config IESO = ON    //Two-speed Oscillator Start-up Enable bit->Start up device with FRC, then switch to user-selected oscillator source

// FOSC
#pragma config POSCMD = XT    //Primary Oscillator Mode Select bits->XT Crystal Oscillator Mode
#pragma config OSCIOFCN = ON    //OSC2 Pin Function bit->OSC2 is general purpose digital I/O pin
#pragma config SOSCSEL = OFF    //SOSC Power Selection Configuration bits->Digital (SCLKI) mode
#pragma config PLLSS = PLL_PRI    //PLL Secondary Selection Configuration bit->PLL is fed by the Primary oscillator
#pragma config IOL1WAY = ON    //Peripheral pin select configuration bit->Allow only one reconfiguration
#pragma config FCKSM = CSECMD    //Clock Switching Mode bits->Clock switching is enabled,Fail-safe Clock Monitor is disabled

// FWDT
#pragma config WDTPS = PS32768    //Watchdog Timer Postscaler bits->1:32768
#pragma config FWPSA = PR128    //Watchdog Timer Prescaler bit->1:128
#pragma config FWDTEN = OFF    //Watchdog Timer Enable bits->WDT and SWDTEN disabled
#pragma config WINDIS = OFF    //Watchdog Timer Window Enable bit->Watchdog Timer in Non-Window mode
#pragma config WDTWIN = WIN25    //Watchdog Timer Window Select bits->WDT Window is 25% of WDT period
#pragma config WDTCMX = WDTCLK    //WDT MUX Source Select bits->WDT clock source is determined by the WDTCLK Configuration bits
#pragma config WDTCLK = LPRC    //WDT Clock Source Select bits->WDT uses LPRC

// FPOR
#pragma config BOREN = ON    //Brown Out Enable bit->Brown Out Enable Bit
#pragma config LPCFG = OFF    //Low power regulator control->No Retention Sleep
#pragma config DNVPEN = ENABLE    //Downside Voltage Protection Enable bit->Downside protection enabled using ZPBOR when BOR is inactive

// FICD
#pragma config ICS = PGD2    //ICD Communication Channel Select bits->Communicate on PGEC2 and PGED2
#pragma config JTAGEN = OFF    //JTAG Enable bit->JTAG is disabled
#pragma config BTSWP = OFF    //BOOTSWP Disable->BOOTSWP instruction disabled

// FDEVOPT1
#pragma config ALTCMPI = DISABLE    //Alternate Comparator Input Enable bit->C1INC, C2INC, and C3INC are on their standard pin locations
#pragma config TMPRPIN = OFF    //Tamper Pin Enable bit->TMPRN pin function is disabled
#pragma config SOSCHP = ON    //SOSC High Power Enable bit (valid only when SOSCSEL = 1->Enable SOSC high power mode (default)
#pragma config ALTVREF = ALTREFEN    //Alternate Voltage Reference Location Enable bit->VREF+ and CVREF+ on RA10, VREF- and CVREF- on RA9

// FBOOT
#pragma config BTMODE = SINGLE    //Boot Mode Configuration bits->Device is in Single Boot (legacy) mode

// *****************************************************************************
// System Settings and Variables
// *****************************************************************************
volatile uint32_t  tick = 0, prevTick;     // tick counter,

NVM_SECTORERASE_FUNC NVMSectorEraseFunction = &DRV_NVM_SST25VF016_SectorErase;
NVM_WRITE_FUNC NVMWriteFunction             = &DRV_NVM_SST25VF016_Write;
NVM_READ_FUNC NVMReadFunction               = &DRV_NVM_SST25VF016_Read;
FLASH_CHIPERASE_FUNC NVMChipEraseFunction   = &DRV_NVM_SST25VF016_ChipErase;

// *****************************************************************************
/*  Function:
    void SYSTEM_BoardInitialize(void)

    Summary:
        This function initializes the system board modules and
        peripheral ports.

    Description:
        This function initializes the system board modules and
        peripheral ports that is specific to the PIC device
        used in this configuration.

*/
// *****************************************************************************
void SYSTEM_BoardInitialize(void)
{

    const DRV_SPI_INIT_DATA SPI_Init_Data = {2, 3, 7, 0, SPI_BUS_MODE_3, 0};

    // ---------------------------------------------------------
    // Make sure the display DO NOT flicker at start up
    // ---------------------------------------------------------
    DisplayBacklightConfig();
    DisplayPowerConfig();
    DisplayBacklightOff();
	
    // ---------------------------------------------------------
    // ADC Explorer 16 Development Board Errata (work around 2)
    // RB15 should be output
    // ---------------------------------------------------------
    LATBbits.LATB15 = 0;
    TRISBbits.TRISB15 = 0;

    // ---------------------------------------------------------
    // Explorer 16 Development Board MCHP25LC256 chip select signal,
    // even if not used must be driven to high so it does not
    // interfere with other SPI peripherals that uses the same SPI signals.
    // ---------------------------------------------------------
    TRISDbits.TRISD12 = 0;
    LATDbits.LATD12 = 1;
    
    // ---------------------------------------------------------
    // Graphics LCD Controller PICtail Plus SSD1926 Board
    // SPI-Flash Device pins 
    // ---------------------------------------------------------
    // chip select pin
    TRISDbits.TRISD1 = 0;
    LATDbits.LATD1   = 1;
    // spi-clock pin
    TRISGbits.TRISG6 = 0;
    // spi-output pin
    TRISGbits.TRISG8 = 0;
    // spi-intput pin
    TRISGbits.TRISG7 = 1;

    // ---------------------------------------------------------
    // UART pins
    // ---------------------------------------------------------
    // initialize the UART pins
    TRISFbits.TRISF5 = 0;
    TRISFbits.TRISF4 = 1;

    // unlock PPS
    __builtin_write_OSCCONL(OSCCON & 0xbf);

    // set UART pins
    RPINR19bits.U2RXR = 10; 	// assign RP10 to RX
    RPOR8bits.RP17R = 5;    	// assign RP17 to TX

    // set SPI pins
    RPOR10bits.RP21R = 11;      // assign RP21 for SCK2
    RPOR9bits.RP19R = 10;       // assign RP19 for SDO2
    RPINR22bits.SDI2R = 26;     // assign RP26 for SDI2

    // lock   PPS
    __builtin_write_OSCCONL(OSCCON | 0x40);

    // ---------------------------------------------------------
    // Initialize the Display Driver
    // ---------------------------------------------------------
    DRV_GFX_Initialize();
   
    {
        uint8_t manufacturer_id;
        uint8_t device_type;
        uint8_t device_id;
        
        NVM_SST26VF0XXB_Initialize((DRV_SPI_INIT_DATA*)&SPI_Init_Data);
        NVM_SST26VF0XXB_JEDEC_ID_Check(&manufacturer_id, &device_type, &device_id);
        
        switch(device_type){
            case 0x25:
                DRV_NVM_SST25VF016_Initialize((DRV_SPI_INIT_DATA*)&SPI_Init_Data);
                NVMSectorEraseFunction = &DRV_NVM_SST25VF016_SectorErase;
                NVMWriteFunction = &DRV_NVM_SST25VF016_Write;
                NVMReadFunction = &DRV_NVM_SST25VF016_Read;
                NVMChipEraseFunction = &DRV_NVM_SST25VF016_ChipErase;
                break;
                
            case 0x26:
                NVM_SST26VF0XXB_Initialize((DRV_SPI_INIT_DATA*)&SPI_Init_Data);
                NVMSectorEraseFunction = &NVM_SST26VF0XXB_SectorErase;
                NVMWriteFunction = &NVM_SST26VF0XXB_Write;
                NVMReadFunction = &NVM_SST26VF0XXB_Read;
                NVMChipEraseFunction = &NVM_SST26VF0XXB_ChipErase;
                break;
                
            default:
                break;
        }
    }
    
    // initialize system tick counter
    SYSTEM_TickInit();

    // initialize the components for Resistive Touch Screen
    TouchInit(NVMWrite, NVMRead, NVMSectorErase, NULL);

    
}

/*********************************************************************
* Function: void __T3_ISR _T3Interrupt(void)
*
* Overview: Timer 3 Interrupt. Serves as the tick timer for the demo.
*
* PreCondition: None
*
* Input:  None
*
* Output: None
*
********************************************************************/
#define __T3_ISR    __attribute__((interrupt, shadow, auto_psv))
void __T3_ISR _T3Interrupt(void)
{
    tick++;

    TMR3 = 0;
    // Clear flag
    IFS0bits.T3IF = 0;
    TouchDetectPosition();
}

/*********************************************************************
 * Section: Tick Delay
 *********************************************************************/
#define SAMPLE_PERIOD   500 // us
#define TICK_PERIOD     (SYS_CLK_FrequencyPeripheralGet() * SAMPLE_PERIOD) / 4000000

// *****************************************************************************
/*  Function:
    void SYSTEM_TickInit(void)

    Summary:
        Initializes the tick timer of the demo.

    Description:
        This function initializes the tick timer of the demo.

*/
// *****************************************************************************
void SYSTEM_TickInit(void)
{
    // Initialize Timer3
    TMR3 = 0;
    PR3 = TICK_PERIOD;
    IFS0bits.T3IF = 0;  //Clear flag
    IEC0bits.T3IE = 1;  //Enable interrupt
    T3CONbits.TON = 1;  //Run timer

}

// *****************************************************************************
/*  Function:
    void SYSTEM_ProgramExternalMemory(void)

    Summary:
        Routine that programs the external memory used by the
        application.

    Description:
        This function programs the external memory on the system.
        Use the UART as the module to receive data to program the
        external memory.

*/
// *****************************************************************************
void SYSTEM_ProgramExternalMemory()
{
    // start the external memory programming
//    ProgramExternalMemory(DataRead, DataWrite, DataChipErase);

    // delay the reset to have time for the acknowledge data to
    // be sent to the host side
    __delay_ms(10);

}

// *****************************************************************************
/*  Function:
    GFX_STATUS GFX_ExternalResourceCallback(
                                GFX_RESOURCE_HDR *pResource,
                                uint32_t offset,
                                uint16_t nCount,
                                void     *pBuffer)

    Summary:
        This function performs data fetch from external memory.

    Description:
        This function must be implemented in the application.
        The library will call this function each time when
        the external memory data will be required. The application
        must copy requested byte quantity into the buffer provided.
        Data start address in external memory is a sum of the address
        in GFX_RESOURCE_HDR structure and offset.

    Precondition:
        None.

    Parameters:
        pResource - Pointer to the external memory resource information.
        offset - offset of the data from the location of the resource
                 in external memory.
        nCount - Number of bytes to be transferred into the buffer.
        buffer - Pointer to the buffer that will hold the retrieved data.

    Returns:
        GFX_STATUS_SUCCESS when all the data was succesfully retrieved.
        GFX_STATUS_FAILURE when partial or no data was retrieved.

    Example:
        None.

*/
// *****************************************************************************
// If there are several memories in the system they can be selected by IDs.
// In this demo ID for memory chip installed on Graphics PICTail board is assumed to be 0.
#define SST39_MEMORY    0
/* */

GFX_STATUS GFX_ExternalResourceCallback(
                                GFX_RESOURCE_HDR *pResource,
                                uint32_t offset,
                                uint16_t nCount,
                                void     *pBuffer)
{
    uint32_t addr;

    // get the proper address
    switch (pResource->type)
    {
        case GFX_RESOURCE_FONT_EXTERNAL_NONE:
            addr = pResource->resource.font.location.extAddress;
            break;
        case GFX_RESOURCE_MCHP_MBITMAP_EXTERNAL_RLE:
        case GFX_RESOURCE_MCHP_MBITMAP_EXTERNAL_NONE:
            addr = pResource->resource.image.location.extAddress;
            break;
        default:
            // type is incorrect
            return (GFX_STATUS_FAILURE);
    }
    addr += offset;

    if(pResource->ID == SST39_MEMORY)
    {
        // Read data requested into buffer provided
        NVMRead(addr, (uint8_t*)pBuffer, nCount);
    }

    return (GFX_STATUS_SUCCESS);
}


