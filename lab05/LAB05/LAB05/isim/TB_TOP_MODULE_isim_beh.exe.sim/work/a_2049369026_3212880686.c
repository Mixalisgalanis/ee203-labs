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
static const char *ng0 = "C:/Users/mgala/Documents/Xilinx Projects/LAB05/LAB05/ADD_SUB_UN_FSM.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2049369026_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14};

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4520);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 4616);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);

LAB6:    goto LAB3;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    t4 = (t0 + 7896);
    t11 = 1;
    if (2U == 2U)
        goto LAB25;

LAB26:    t11 = 0;

LAB27:    if (t11 == 1)
        goto LAB22;

LAB23:    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t14 = (t0 + 7898);
    t17 = 1;
    if (2U == 2U)
        goto LAB34;

LAB35:    t17 = 0;

LAB36:    if (t17 == 1)
        goto LAB31;

LAB32:    t13 = (unsigned char)0;

LAB33:    t6 = t13;

LAB24:    if (t6 == 1)
        goto LAB19;

LAB20:    t5 = (unsigned char)0;

LAB21:    if (t5 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB40;

LAB41:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB8;

LAB10:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 7900);
    t2 = 1;
    if (2U == 2U)
        goto LAB45;

LAB46:    t2 = 0;

LAB47:    if (t2 != 0)
        goto LAB42;

LAB44:    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 7902);
    t5 = 1;
    if (2U == 2U)
        goto LAB56;

LAB57:    t5 = 0;

LAB58:    if (t5 == 1)
        goto LAB53;

LAB54:    t2 = (unsigned char)0;

LAB55:    if (t2 != 0)
        goto LAB51;

LAB52:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB43:    goto LAB8;

LAB11:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB13:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB62;

LAB64:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB63:    goto LAB8;

LAB14:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB15:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB16:    xsi_set_current_line(34, ng0);
    t21 = (t0 + 4616);
    t28 = (t21 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)1;
    xsi_driver_first_trans_fast(t21);
    goto LAB17;

LAB19:    t21 = (t0 + 1832U);
    t25 = *((char **)t21);
    t26 = *((unsigned char *)t25);
    t27 = (t26 == (unsigned char)3);
    t5 = t27;
    goto LAB21;

LAB22:    t6 = (unsigned char)1;
    goto LAB24;

LAB25:    t12 = 0;

LAB28:    if (t12 < 2U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t9 = (t7 + t12);
    t10 = (t4 + t12);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB26;

LAB30:    t12 = (t12 + 1);
    goto LAB28;

LAB31:    t21 = (t0 + 1192U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)2);
    t13 = t24;
    goto LAB33;

LAB34:    t18 = 0;

LAB37:    if (t18 < 2U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t19 = (t15 + t18);
    t20 = (t14 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB35;

LAB39:    t18 = (t18 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4616);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB42:    xsi_set_current_line(39, ng0);
    t9 = (t0 + 4616);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
    goto LAB43;

LAB45:    t12 = 0;

LAB48:    if (t12 < 2U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t7 = (t3 + t12);
    t8 = (t1 + t12);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB46;

LAB50:    t12 = (t12 + 1);
    goto LAB48;

LAB51:    xsi_set_current_line(40, ng0);
    t9 = (t0 + 4616);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    goto LAB43;

LAB53:    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t6 = *((unsigned char *)t10);
    t11 = (t6 == (unsigned char)2);
    t2 = t11;
    goto LAB55;

LAB56:    t12 = 0;

LAB59:    if (t12 < 2U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t7 = (t3 + t12);
    t8 = (t1 + t12);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB57;

LAB61:    t12 = (t12 + 1);
    goto LAB59;

LAB62:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 4616);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB63;

}

static void work_a_2049369026_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4536);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 4680);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7904);
    t9 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t9 = 0;

LAB18:    if (t9 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 7908);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB23:    goto LAB2;

LAB4:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4680);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7910);
    t9 = 1;
    if (2U == 2U)
        goto LAB31;

LAB32:    t9 = 0;

LAB33:    if (t9 == 1)
        goto LAB28;

LAB29:    t3 = (unsigned char)0;

LAB30:    if (t3 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB26:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 7912);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4680);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7914);
    t9 = 1;
    if (2U == 2U)
        goto LAB43;

LAB44:    t9 = 0;

LAB45:    if (t9 == 1)
        goto LAB40;

LAB41:    t3 = (unsigned char)0;

LAB42:    if (t3 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB38:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 7916);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4680);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7918);
    t9 = 1;
    if (2U == 2U)
        goto LAB55;

LAB56:    t9 = 0;

LAB57:    if (t9 == 1)
        goto LAB52;

LAB53:    t3 = (unsigned char)0;

LAB54:    if (t3 != 0)
        goto LAB49;

LAB51:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB50:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 7920);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB7:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4680);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 4744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7922);
    t9 = 1;
    if (2U == 2U)
        goto LAB67;

LAB68:    t9 = 0;

LAB69:    if (t9 == 1)
        goto LAB64;

LAB65:    t3 = (unsigned char)0;

LAB66:    if (t3 != 0)
        goto LAB61;

LAB63:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB62:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 7924);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB8:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 4680);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7926);
    t9 = 1;
    if (2U == 2U)
        goto LAB79;

LAB80:    t9 = 0;

LAB81:    if (t9 == 1)
        goto LAB76;

LAB77:    t3 = (unsigned char)0;

LAB78:    if (t3 != 0)
        goto LAB73;

LAB75:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB74:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7928);
    t9 = 1;
    if (2U == 2U)
        goto LAB91;

LAB92:    t9 = 0;

LAB93:    if (t9 == 1)
        goto LAB88;

LAB89:    t3 = (unsigned char)0;

LAB90:    if (t3 != 0)
        goto LAB85;

LAB87:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB86:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 7930);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB9:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 4680);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 4744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 4808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 4872);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 7932);
    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB10:    xsi_set_current_line(69, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB11;

LAB13:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB15;

LAB16:    t10 = 0;

LAB19:    if (t10 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB17;

LAB21:    t10 = (t10 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 7906);
    t5 = (t0 + 4936);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    memcpy(t13, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB23;

LAB25:    xsi_set_current_line(81, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB26;

LAB28:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB30;

LAB31:    t10 = 0;

LAB34:    if (t10 < 2U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB32;

LAB36:    t10 = (t10 + 1);
    goto LAB34;

LAB37:    xsi_set_current_line(90, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB38;

LAB40:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB42;

LAB43:    t10 = 0;

LAB46:    if (t10 < 2U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB44;

LAB48:    t10 = (t10 + 1);
    goto LAB46;

LAB49:    xsi_set_current_line(99, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB50;

LAB52:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB54;

LAB55:    t10 = 0;

LAB58:    if (t10 < 2U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB56;

LAB60:    t10 = (t10 + 1);
    goto LAB58;

LAB61:    xsi_set_current_line(108, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB62;

LAB64:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB66;

LAB67:    t10 = 0;

LAB70:    if (t10 < 2U)
        goto LAB71;
    else
        goto LAB69;

LAB71:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB68;

LAB72:    t10 = (t10 + 1);
    goto LAB70;

LAB73:    xsi_set_current_line(115, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB74;

LAB76:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB78;

LAB79:    t10 = 0;

LAB82:    if (t10 < 2U)
        goto LAB83;
    else
        goto LAB81;

LAB83:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB80;

LAB84:    t10 = (t10 + 1);
    goto LAB82;

LAB85:    xsi_set_current_line(120, ng0);
    t7 = (t0 + 4872);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB86;

LAB88:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB90;

LAB91:    t10 = 0;

LAB94:    if (t10 < 2U)
        goto LAB95;
    else
        goto LAB93;

LAB95:    t5 = (t2 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB92;

LAB96:    t10 = (t10 + 1);
    goto LAB94;

}


extern void work_a_2049369026_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2049369026_3212880686_p_0,(void *)work_a_2049369026_3212880686_p_1};
	xsi_register_didat("work_a_2049369026_3212880686", "isim/TB_TOP_MODULE_isim_beh.exe.sim/work/a_2049369026_3212880686.didat");
	xsi_register_executes(pe);
}
