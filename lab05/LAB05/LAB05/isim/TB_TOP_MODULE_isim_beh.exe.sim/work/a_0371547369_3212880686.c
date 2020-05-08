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
static const char *ng0 = "C:/Users/mgala/Documents/Xilinx Projects/LAB05/LAB05/ssd_Decoder2To4.vhd";



static void work_a_0371547369_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)3, 4U);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 4727);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 4699);
    t10 = xsi_mem_cmp(t1, t3, 2U);
    if (t10 == 1)
        goto LAB6;

LAB11:    t5 = (t0 + 4701);
    t11 = xsi_mem_cmp(t5, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t7 = (t0 + 4703);
    t13 = xsi_mem_cmp(t7, t3, 2U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 4705);
    t16 = xsi_mem_cmp(t14, t3, 2U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 4723);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(21, ng0);
    t17 = (t0 + 4707);
    t19 = (t0 + 2912);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 4U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB5;

LAB7:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 4711);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB8:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 4715);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB9:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 4719);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB15:;
}


extern void work_a_0371547369_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0371547369_3212880686_p_0};
	xsi_register_didat("work_a_0371547369_3212880686", "isim/TB_TOP_MODULE_isim_beh.exe.sim/work/a_0371547369_3212880686.didat");
	xsi_register_executes(pe);
}
