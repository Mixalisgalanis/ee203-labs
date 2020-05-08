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
static const char *ng0 = "C:/Users/mgala/Documents/Xilinx Projects/LAB05/LAB05/ssdCounter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3034207120_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t1 = xsi_get_transient_memory(17U);
    memset(t1, 0, 17U);
    t5 = t1;
    memset(t5, (unsigned char)2, 17U);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 17U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 5204U);
    t7 = (t0 + 5248);
    t9 = (t12 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 16;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t13 = (16 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t7, t12);
    if (t15 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5204U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t2, t1, 1);
    t6 = (t12 + 12U);
    t14 = *((unsigned int *)t6);
    t22 = (1U * t14);
    t3 = (17U != t22);
    if (t3 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 3232);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t5, 17U);
    xsi_driver_first_trans_fast(t7);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(25, ng0);
    t10 = xsi_get_transient_memory(17U);
    memset(t10, 0, 17U);
    t16 = t10;
    memset(t16, (unsigned char)2, 17U);
    t17 = (t0 + 3232);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 17U);
    xsi_driver_first_trans_fast(t17);
    goto LAB11;

LAB13:    xsi_size_not_matching(17U, t22, 0);
    goto LAB14;

}


extern void work_a_3034207120_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3034207120_3212880686_p_0};
	xsi_register_didat("work_a_3034207120_3212880686", "isim/TB_TOP_MODULE_isim_beh.exe.sim/work/a_3034207120_3212880686.didat");
	xsi_register_executes(pe);
}
