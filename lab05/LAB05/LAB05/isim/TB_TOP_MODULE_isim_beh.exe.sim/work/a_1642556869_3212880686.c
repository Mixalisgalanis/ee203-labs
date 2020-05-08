/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/mgala/Documents/Xilinx Projects/LAB05/LAB05/Mux_Pre_Stack.vhd";



static void work_a_1642556869_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5455);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5457);
    t14 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t14 = 0;

LAB18:    if (t14 == 1)
        goto LAB13;

LAB14:    t4 = (unsigned char)0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3392);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t8 = (t0 + 3392);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(23, ng0);
    t8 = (t0 + 1192U);
    t10 = *((char **)t8);
    t8 = (t0 + 3392);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    memcpy(t17, t10, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB13:    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t15 = *((unsigned char *)t9);
    t16 = (t15 == (unsigned char)3);
    t4 = t16;
    goto LAB15;

LAB16:    t5 = 0;

LAB19:    if (t5 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB17;

LAB21:    t5 = (t5 + 1);
    goto LAB19;

}


extern void work_a_1642556869_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1642556869_3212880686_p_0};
	xsi_register_didat("work_a_1642556869_3212880686", "isim/TB_TOP_MODULE_isim_beh.exe.sim/work/a_1642556869_3212880686.didat");
	xsi_register_executes(pe);
}
