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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_1637942105_2431929443_3760510940_init();
    simprim_a_1637942105_2431929443_1524502240_init();
    simprim_a_1637942105_2431929443_3547814748_init();
    simprim_a_1637942105_2431929443_1828781778_init();
    simprim_a_1637942105_2431929443_3098541768_init();
    simprim_a_1637942105_2431929443_2676105037_init();
    simprim_a_1637942105_2431929443_2142589244_init();
    simprim_a_1637942105_2431929443_1126735440_init();
    simprim_a_1637942105_2431929443_0262563066_init();
    simprim_a_1637942105_2431929443_0241438413_init();
    simprim_a_1637942105_2431929443_3817870308_init();
    simprim_a_1637942105_2431929443_0684507201_init();
    simprim_a_1637942105_2431929443_0879377943_init();
    simprim_a_1637942105_2431929443_4239538652_init();
    simprim_a_1637942105_2431929443_0908886094_init();
    simprim_a_1637942105_2431929443_4251997163_init();
    simprim_a_1637942105_2431929443_0900224032_init();
    simprim_a_1637942105_2431929443_4281789874_init();
    simprim_a_1637942105_2431929443_0688826998_init();
    simprim_a_1637942105_2431929443_4277438341_init();
    simprim_a_1637942105_2431929443_3650777748_init();
    simprim_a_1637942105_2431929443_3797055955_init();
    simprim_a_1637942105_2431929443_1072292131_init();
    simprim_a_1637942105_2431929443_0554279212_init();
    simprim_a_1637942105_2431929443_3346674331_init();
    simprim_a_1637942105_2431929443_0550226715_init();
    simprim_a_1637942105_2431929443_3333970092_init();
    simprim_a_1637942105_2431929443_0315007281_init();
    simprim_a_1637942105_2431929443_0938404473_init();
    simprim_a_1637942105_2431929443_0262288720_init();
    simprim_a_1637942105_2431929443_2291501328_init();
    simprim_a_1637942105_2431929443_0203874622_init();
    simprim_a_1637942105_2431929443_3952548030_init();
    simprim_a_1637942105_2431929443_0233081609_init();
    simprim_a_1637942105_2431929443_0205944396_init();
    simprim_a_1637942105_2431929443_0226761851_init();
    simprim_a_1637942105_2431929443_0089952040_init();
    simprim_a_1637942105_2431929443_0077522207_init();
    simprim_a_1637942105_2431929443_0523350933_init();
    simprim_a_1637942105_2431929443_1601773863_init();
    simprim_a_1637942105_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_0205944396_init();
    simprim_a_3156740924_4150518722_0226761851_init();
    simprim_a_3156740924_4150518722_0089952040_init();
    simprim_a_3156740924_4150518722_0077522207_init();
    simprim_a_3156740924_4150518722_0523350933_init();
    simprim_a_3156740924_4150518722_1601773863_init();
    simprim_a_3912256443_3689431007_init();
    simprim_a_2007742134_2082680706_init();
    simprim_a_1842505884_2082680706_init();
    simprim_a_3531501133_3419647467_init();
    simprim_a_2251447962_0381654293_1126735440_init();
    simprim_a_3215534263_2810828532_init();
    simprim_a_1622123893_2810828532_init();
    simprim_a_1041479920_2082082460_init();
    simprim_a_3641581159_2082082460_init();
    simprim_a_3936907874_4055128042_3817870308_init();
    simprim_a_3936907874_4055128042_0684507201_init();
    simprim_a_3370445208_1957906245_0879377943_init();
    simprim_a_1441466606_1957906245_4251997163_init();
    simprim_a_0297270247_1957906245_0688826998_init();
    simprim_a_3787076264_1957906245_3797055955_init();
    simprim_a_3110391562_1957906245_0879377943_init();
    simprim_a_2153841838_1957906245_3817870308_init();
    simprim_a_2761244208_1957906245_3817870308_init();
    simprim_a_3279087018_1957906245_0684507201_init();
    simprim_a_4027946317_1957906245_0684507201_init();
    simprim_a_3110391562_1957906245_0688826998_init();
    simprim_a_2381464138_1957906245_4239538652_init();
    simprim_a_1768127149_1957906245_4239538652_init();
    simprim_a_4170092454_1957906245_0908886094_init();
    simprim_a_3960525574_1957906245_0908886094_init();
    simprim_a_3362892137_1957906245_4251997163_init();
    simprim_a_1714902704_1957906245_0900224032_init();
    simprim_a_0667644748_1957906245_0900224032_init();
    simprim_a_3864192988_1957906245_4281789874_init();
    simprim_a_4228860141_1957906245_4281789874_init();
    simprim_a_2132651894_1957906245_4277438341_init();
    simprim_a_3929520961_1957906245_4277438341_init();
    simprim_a_3564454768_1957906245_3650777748_init();
    simprim_a_3939916367_1957906245_3650777748_init();
    simprim_a_1486114703_1957906245_3797055955_init();
    simprim_a_1431407109_1957906245_1072292131_init();
    simprim_a_3596914204_1957906245_0938404473_init();
    simprim_a_1712886954_1957906245_0262288720_init();
    simprim_a_2545379834_1957906245_0203874622_init();
    simprim_a_2880286190_2413300256_0554279212_init();
    simprim_a_2880286190_2413300256_3333970092_init();
    simprim_a_0457340132_2413300256_0879377943_init();
    simprim_a_2880286190_2413300256_0688826998_init();
    simprim_a_2880286190_2413300256_3797055955_init();
    simprim_a_2880286190_2413300256_3817870308_init();
    simprim_a_2880286190_2413300256_0684507201_init();
    simprim_a_2880286190_2413300256_4239538652_init();
    simprim_a_2880286190_2413300256_4281789874_init();
    simprim_a_2880286190_2413300256_4277438341_init();
    simprim_a_0457340132_2413300256_3650777748_init();
    simprim_a_2880286190_2413300256_1072292131_init();
    simprim_a_2880286190_2413300256_3346674331_init();
    simprim_a_2880286190_2413300256_0550226715_init();
    simprim_a_2880286190_2413300256_0315007281_init();
    simprim_a_2880286190_2413300256_2291501328_init();
    simprim_a_2880286190_2413300256_3952548030_init();
    simprim_a_2880286190_2413300256_0233081609_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_1335952598_0632001823_init();
    work_a_3622719947_2372691052_init();


    xsi_register_tops("work_a_3622719947_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
