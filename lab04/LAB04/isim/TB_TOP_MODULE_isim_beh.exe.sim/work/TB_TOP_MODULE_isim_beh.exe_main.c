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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1753280202_3212880686_init();
    work_a_4000226436_3212880686_init();
    work_a_1306858229_3212880686_init();
    work_a_2895730147_3212880686_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_1194802279_2959432447_init();
    xilinxcorelib_a_1415938051_1709443946_init();
    xilinxcorelib_a_3079246731_0543512595_init();
    xilinxcorelib_a_3192818850_3212880686_init();
    work_a_3772128646_1178700139_init();
    work_a_2642783403_3212880686_init();
    work_a_0497209184_3212880686_init();
    work_a_2047296762_1181938964_init();
    work_a_2452728882_3212880686_init();
    work_a_3034207120_3212880686_init();
    work_a_2936384187_3212880686_init();
    work_a_3697113010_3212880686_init();
    work_a_3802377318_3212880686_init();
    work_a_1564727594_3212880686_init();
    work_a_0469774604_1181938964_init();
    work_a_0371547369_3212880686_init();
    work_a_1170544153_1181938964_init();
    work_a_3225011129_1181938964_init();
    work_a_2854046155_2372691052_init();


    xsi_register_tops("work_a_2854046155_2372691052");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
