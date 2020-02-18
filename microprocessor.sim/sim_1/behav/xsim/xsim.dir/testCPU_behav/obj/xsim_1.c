/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_5351(char*, char *);
extern void execute_10919(char*, char *);
extern void execute_10920(char*, char *);
extern void execute_10921(char*, char *);
extern void execute_10922(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_5406(char*, char *);
extern void execute_5407(char*, char *);
extern void execute_5388(char*, char *);
extern void execute_5356(char*, char *);
extern void execute_5357(char*, char *);
extern void execute_5389(char*, char *);
extern void execute_5390(char*, char *);
extern void execute_5391(char*, char *);
extern void execute_5392(char*, char *);
extern void execute_5393(char*, char *);
extern void execute_5394(char*, char *);
extern void execute_5395(char*, char *);
extern void execute_5396(char*, char *);
extern void execute_5397(char*, char *);
extern void execute_5398(char*, char *);
extern void execute_5399(char*, char *);
extern void execute_5400(char*, char *);
extern void execute_5401(char*, char *);
extern void execute_5402(char*, char *);
extern void execute_5403(char*, char *);
extern void execute_5404(char*, char *);
extern void execute_24(char*, char *);
extern void execute_5408(char*, char *);
extern void execute_5409(char*, char *);
extern void execute_5410(char*, char *);
extern void execute_5411(char*, char *);
extern void execute_5412(char*, char *);
extern void execute_5413(char*, char *);
extern void execute_5414(char*, char *);
extern void execute_5415(char*, char *);
extern void execute_5416(char*, char *);
extern void execute_5417(char*, char *);
extern void execute_5418(char*, char *);
extern void execute_5419(char*, char *);
extern void execute_5420(char*, char *);
extern void execute_5421(char*, char *);
extern void execute_5422(char*, char *);
extern void execute_5423(char*, char *);
extern void execute_5424(char*, char *);
extern void execute_5425(char*, char *);
extern void execute_5426(char*, char *);
extern void execute_5997(char*, char *);
extern void execute_6007(char*, char *);
extern void execute_6008(char*, char *);
extern void execute_6009(char*, char *);
extern void execute_6010(char*, char *);
extern void execute_6011(char*, char *);
extern void execute_6012(char*, char *);
extern void execute_10918(char*, char *);
extern void execute_6014(char*, char *);
extern void execute_6015(char*, char *);
extern void execute_6028(char*, char *);
extern void execute_6029(char*, char *);
extern void execute_10899(char*, char *);
extern void execute_10900(char*, char *);
extern void execute_10901(char*, char *);
extern void execute_5353(char*, char *);
extern void execute_5354(char*, char *);
extern void execute_5355(char*, char *);
extern void execute_10923(char*, char *);
extern void execute_10924(char*, char *);
extern void execute_10925(char*, char *);
extern void execute_10926(char*, char *);
extern void execute_10927(char*, char *);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1545(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1547(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1551(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[80] = {(funcp)execute_5351, (funcp)execute_10919, (funcp)execute_10920, (funcp)execute_10921, (funcp)execute_10922, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_5406, (funcp)execute_5407, (funcp)execute_5388, (funcp)execute_5356, (funcp)execute_5357, (funcp)execute_5389, (funcp)execute_5390, (funcp)execute_5391, (funcp)execute_5392, (funcp)execute_5393, (funcp)execute_5394, (funcp)execute_5395, (funcp)execute_5396, (funcp)execute_5397, (funcp)execute_5398, (funcp)execute_5399, (funcp)execute_5400, (funcp)execute_5401, (funcp)execute_5402, (funcp)execute_5403, (funcp)execute_5404, (funcp)execute_24, (funcp)execute_5408, (funcp)execute_5409, (funcp)execute_5410, (funcp)execute_5411, (funcp)execute_5412, (funcp)execute_5413, (funcp)execute_5414, (funcp)execute_5415, (funcp)execute_5416, (funcp)execute_5417, (funcp)execute_5418, (funcp)execute_5419, (funcp)execute_5420, (funcp)execute_5421, (funcp)execute_5422, (funcp)execute_5423, (funcp)execute_5424, (funcp)execute_5425, (funcp)execute_5426, (funcp)execute_5997, (funcp)execute_6007, (funcp)execute_6008, (funcp)execute_6009, (funcp)execute_6010, (funcp)execute_6011, (funcp)execute_6012, (funcp)execute_10918, (funcp)execute_6014, (funcp)execute_6015, (funcp)execute_6028, (funcp)execute_6029, (funcp)execute_10899, (funcp)execute_10900, (funcp)execute_10901, (funcp)execute_5353, (funcp)execute_5354, (funcp)execute_5355, (funcp)execute_10923, (funcp)execute_10924, (funcp)execute_10925, (funcp)execute_10926, (funcp)execute_10927, (funcp)transaction_3, (funcp)transaction_4, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_23, (funcp)transaction_25, (funcp)transaction_1545, (funcp)transaction_1547, (funcp)transaction_1551};
const int NumRelocateId= 80;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testCPU_behav/xsim.reloc",  (void **)funcTab, 80);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testCPU_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/testCPU_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testCPU_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testCPU_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testCPU_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
