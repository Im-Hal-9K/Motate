/**
 * \file
 *
 * \brief Instance description for OPAMP
 *
 * Copyright (c) 2014 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */

#ifndef _SAML21_OPAMP_INSTANCE_
#define _SAML21_OPAMP_INSTANCE_

/* ========== Register definition for OPAMP peripheral ========== */
#if (defined(__ASSEMBLY__) || defined(__IAR_SYSTEMS_ASM__))
#define REG_OPAMP_CTRLA            (0x43001800U) /**< \brief (OPAMP) Control A */
#define REG_OPAMP_STATUS           (0x43001802U) /**< \brief (OPAMP) Status */
#define REG_OPAMP_OPAMPCTRL0       (0x43001804U) /**< \brief (OPAMP) OPAMP 0 Control */
#define REG_OPAMP_OPAMPCTRL1       (0x43001808U) /**< \brief (OPAMP) OPAMP 1 Control */
#define REG_OPAMP_OPAMPCTRL2       (0x4300180CU) /**< \brief (OPAMP) OPAMP 2 Control */
#else
#define REG_OPAMP_CTRLA            (*(RwReg8 *)0x43001800U) /**< \brief (OPAMP) Control A */
#define REG_OPAMP_STATUS           (*(RoReg8 *)0x43001802U) /**< \brief (OPAMP) Status */
#define REG_OPAMP_OPAMPCTRL0       (*(RwReg  *)0x43001804U) /**< \brief (OPAMP) OPAMP 0 Control */
#define REG_OPAMP_OPAMPCTRL1       (*(RwReg  *)0x43001808U) /**< \brief (OPAMP) OPAMP 1 Control */
#define REG_OPAMP_OPAMPCTRL2       (*(RwReg  *)0x4300180CU) /**< \brief (OPAMP) OPAMP 2 Control */
#endif /* (defined(__ASSEMBLY__) || defined(__IAR_SYSTEMS_ASM__)) */


#endif /* _SAML21_OPAMP_INSTANCE_ */
