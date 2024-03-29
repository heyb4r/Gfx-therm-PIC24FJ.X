/*****************************************************************************
  AUTO-GENERATED CODE:  Graphics Resource Converter version: 4.02.00

  Company:
      Microchip Technology, Inc.
 
  File Name:
     internal_resource_reference.c
 
  Summary:
      This file is generated by the Microchip's Graphics Resource Converter.
  Description:
      This file is generated by the Graphics Resource Converter containing
      resources such as images and fonts that can be used by Microchip's
      Graphics Library, which is part of the MLA.
 *****************************************************************************/

// DOM-IGNORE-BEGIN
/*****************************************************************************
  Software License Agreement

  Copyright(c) 2013 Microchip Technology Inc.  All rights reserved.
  Microchip licenses to you the right to use, modify, copy and distribute
  Software only when embedded on a Microchip microcontroller or digital
  signal controller that is integrated into your product or third party
  product (pursuant to the sublicense terms in the accompanying license
  agreement).
 
  You should refer to the license agreement accompanying this Software
  for additional information regarding your rights and obligations.
 
  SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
  KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
  OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
  PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
  OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
  BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
  DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
  INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
  COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
  CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
  OR OTHER SIMILAR COSTS.
 *****************************************************************************/
// DOM-IGNORE-END

/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <gfx/gfx.h>
#include <stdint.h>

/*****************************************************************************
 * SECTION:  Graphics Library Format Check
 *****************************************************************************/
#ifndef GFX_RESOURCE_FORMAT_VERSION
    #if(GRAPHICS_LIBRARY_VERSION != 0x0401)
    #warning "It is suggested to use Graphics Library version 4.01 or later with this version of GRC."
    #endif
#elif(GFX_RESOURCE_FORMAT_VERSION != 0x0101)
#warning "It is suggested to use Graphics Library with the resource format version 1.01 with this version of GRC."
#endif

/*****************************************************************************
 * SECTION:  Graphics Bitmap Padding Check
 *****************************************************************************/
#ifdef GFX_CONFIG_IMAGE_PADDING_DISABLE
#error These bitmap resources have been converted with padding of the horizontal lines, but GFX_CONFIG_IMAGE_PADDING_DISABLE is defined in system_config.h.
#endif


/*****************************************************************************
 * SECTION:  Graphics Configuration: Bitmap Check
 *****************************************************************************/

#ifdef GFX_CONFIG_IMAGE_FLASH_DISABLE
#error The GFX_CONFIG_IMAGE_FLASH_DISABLE is defined in system_config.h header file.
#endif

#ifdef GFX_CONFIG_RLE_DECODE_DISABLE
#error The GFX_CONFIG_RLE_DECODE_DISABLE is defined in system_config.h header file.
#endif

/*****************************************************************************
 * SECTION:  Graphics Configuration: Font Check
 *****************************************************************************/

#ifdef GFX_CONFIG_FONT_FLASH_DISABLE
#error The GFX_CONFIG_FONT_FLASH_DISABLE is defined in system_config.h header file.
#endif


/*****************************************************************************
 * SECTION:  Font33_Antialiased - Phrases
 *****************************************************************************/

const GFX_XCHAR AntialisedText[] = {   0x0020, 0x0025, 0x0027, 0x0023, 0x0020, 0x0024, 0x0023, 0x0020, 0x0026, 0x0022, 0x0021, 0x0000    };    //Antialised text

/*****************************************************************************
 * SECTION:  Font33_Antialiased - Unicode to GRC Index Table
 *****************************************************************************/

#ifdef GFX_CONFIG_UNICODE_INDEX_TABLE_ENABLE
const uint16_t font33_antialiasedUnicodeIndexTable[8][2] =
{
//    Unicode   GRC Index
//    -------   ---------
    {  0x0041,   0x0020  },
    {  0x0044,   0x0021  },
    {  0x0045,   0x0022  },
    {  0x0049,   0x0023  },
    {  0x004C,   0x0024  },
    {  0x004E,   0x0025  },
    {  0x0053,   0x0026  },
    {  0x0054,   0x0027  },
};
#endif
/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: flower1bit
 * Description:  85x113 pixels, 1-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __flower1bit[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __flower1bit[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR flower1bit =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __flower1bit,
    .resource.image.width = 85,
    .resource.image.height = 113,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 1248,
    .resource.image.colorDepth = 1,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: flower4bit
 * Description:  85x113 pixels, 4-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __flower4bit[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __flower4bit[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR flower4bit =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __flower4bit,
    .resource.image.width = 85,
    .resource.image.height = 113,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 4892,
    .resource.image.colorDepth = 4,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: flower8bit
 * Description:  85x113 pixels, 8-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __flower8bit[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __flower8bit[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR flower8bit =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __flower8bit,
    .resource.image.width = 85,
    .resource.image.height = 113,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 10120,
    .resource.image.colorDepth = 8,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: flower16bit
 * Description:  85x113 pixels, 16-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __flower16bit[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __flower16bit[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR flower16bit =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __flower16bit,
    .resource.image.width = 85,
    .resource.image.height = 113,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 19212,
    .resource.image.colorDepth = 16,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: Sun8bit
 * Description:  72x72 pixels, 8-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __Sun8bit[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __Sun8bit[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR Sun8bit =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __Sun8bit,
    .resource.image.width = 72,
    .resource.image.height = 72,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 5700,
    .resource.image.colorDepth = 8,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: Sun8bit_RLE
 * Description:  72x72 pixels, 8-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __Sun8bit_RLE[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __Sun8bit_RLE[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR Sun8bit_RLE =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_RLE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __Sun8bit_RLE,
    .resource.image.width = 72,
    .resource.image.height = 72,
    .resource.image.parameter1.compressedSize = 3997,
    .resource.image.parameter2.rawSize = 5700,
    .resource.image.colorDepth = 8,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: Gaming4bit
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __Gaming4bit[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __Gaming4bit[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR Gaming4bit =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __Gaming4bit,
    .resource.image.width = 72,
    .resource.image.height = 72,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 2628,
    .resource.image.colorDepth = 4,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: Gaming4bit_RLE
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __Gaming4bit_RLE[] __attribute__((space(prog), section("grc_images")));
#else
extern uint8_gfx_image_prog __Gaming4bit_RLE[] __attribute__((space(prog), section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR Gaming4bit_RLE =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_RLE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __Gaming4bit_RLE,
    .resource.image.width = 72,
    .resource.image.height = 72,
    .resource.image.parameter1.compressedSize = 1378,
    .resource.image.parameter2.rawSize = 2628,
    .resource.image.colorDepth = 4,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*****************************************************************************
 * SECTION:  FONTS
 *****************************************************************************/

/*********************************
 * FNT Font File Structure
 * Label: Font25
 * Description:  Height: 27 pixels, range: ' ' to '~'
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Font25[] __attribute__((space(prog), section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Font25[] __attribute__((space(prog), section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Font25[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Font25 = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Font25,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 0,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x007E,
    .resource.font.header.height = 0x001B,
};
/*********************************
 * TTF Font File Structure
 * Label: Font33
 * Description:  Height: 33 pixels, 1 bit per pixel, Range: ' ' to '~'
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Font33[] __attribute__((space(prog), section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Font33[] __attribute__((space(prog), section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Font33[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Font33 = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Font33,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 0,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x007E,
    .resource.font.header.height = 0x0021,
};
/*********************************
 * TTF Font File Structure
 * Label: Font33_Antialiased
 * Description:  Height: 33 pixels, 2 bits per pixel, Range: 'A' to 'T'
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Font33_Antialiased[] __attribute__((space(prog), section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Font33_Antialiased[] __attribute__((space(prog), section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Font33_Antialiased[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Font33_Antialiased = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Font33_Antialiased,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 1,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x0027,
    .resource.font.header.height = 0x0021,
};
