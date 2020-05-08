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
static const char *ng0 = "C:/Users/mgala/Documents/Xilinx Projects/LAB03/ssd_Mux_32to8.vhd";



static void work_a_3802377318_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4678);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 4680);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 4682);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t14 = (31 - 31);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(14, ng0);

LAB15:    t2 = (t0 + 2832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(15, ng0);
    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t14 = (31 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t17 = (t0 + 2912);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t14 = (31 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t14 = (31 - 23);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 2832);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_3802377318_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3802377318_3212880686_p_0};
	xsi_register_didat("work_a_3802377318_3212880686", "isim/TB_TOP_MODULE_isim_beh.exe.sim/work/a_3802377318_3212880686.didat");
	xsi_register_executes(pe);
}
