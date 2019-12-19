/*******************************************************************************
 Microchip Graphics Library Application Demo

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    Application demo for Graphics Library Primitive Layer.

  Description:
    This demo shows the Primitive Layer rendering features of the Microchip
    Graphics Library.
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
#include <stdint.h>
#include <stdlib.h>
#include "system.h"
#include "gfx/gfx.h"
#include "gfx/gfx_colors_x11.h"
#include "gfx/gfx_gol.h"
#include "gfx/gfx_gol_button.h"
#include "internal_resource.h"

// *****************************************************************************
// Section: Function Prototypes
// *****************************************************************************


bool APP_ObjectDrawCallback(void);

// *****************************************************************************
// Section: Macros
// *****************************************************************************
#define APP_WaitUntilFinished(x)    while(!x)
// *****************************************************************************
// Section: Defines
// *****************************************************************************
#define APP_SCREEN_DELAY_MS         (1000)
// *****************************************************************************
// Section: Constants

// *****************************************************************************

// *****************************************************************************
// int main(void)
// *****************************************************************************
int main(void)
{
    
    // initialize hardware components and peripherals
    SYSTEM_BoardInitialize();
    
    GFX_Initialize();
    
    // Turn on the display backlight.
    // this is called here so we do not see the screen in a state
    // where the display buffer has not been initialized
    DisplayBacklightOn();
   
                

    while(1)
    {   
       

    }
}
