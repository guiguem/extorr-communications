	TAGS	UNSORTED
AT91M40400	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8	#define AT91M40400	// AT91M40807 just has 128k sram added, so I won't have to change inc's
DIM	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	470	#define DIM(x) (sizeof(x) / sizeof(x[0]))
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	577	#define low_memory __attribute__ ((section (".text_lowmem")))
DIODE_DROP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	641	#define DIODE_DROP (0.7)
degas_on	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	666	#define degas_on UPOhi
degas_off	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	689	#define degas_off UPOlo
power_up	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	715	#define power_up UPOhi
power_down	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	738	#define power_down UPOlo
VoltageReference	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1219	#define VoltageReference (2.5)
VoltageGainMinus	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1250	#define VoltageGainMinus (1000000.0 / 15800)    // V/V, dc amplifier minus input op amp
VoltageGainPlus	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1338	#define VoltageGainPlus (1 + VoltageGainMinus)    // V/V, dc amplifier plus input
AtoDStep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1420	#define AtoDStep (4.096 / (float)0x7FFFFF)   //volts, 24 bit AtoD
IonDacStep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1486	#define IonDacStep (VoltageReference / (float)0xFFF)      //volts, 12 bit D to A
MassDacStep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1567	#define MassDacStep (VoltageReference / (float)0xFFFF)    //volts, 16 bit D to A
MultiplierDacGain	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1649	#define MultiplierDacGain ((1.0e8/66500.0))    // V/V, dc amplifier gain
Dac12BitStepVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	1770	#define Dac12BitStepVolts (VoltageReference / (float)0xFFF)      //volts, 12 bit D to A
IonEnergyGain	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	2048	#define IonEnergyGain (VoltageGainPlus * 15800.0/(178000.0 + 15800.0))
RfAmpGain	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	2120	#define RfAmpGain (( (47000.0/*(ohm)*/) + (5600.0 /*(ohm)*/) ) / (5600.0/*(ohm)*/) )
FINE_GAIN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	2374	#define FINE_GAIN (-178000.0/220000.0)
COARSE_GAIN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	2413	#define COARSE_GAIN (1.0 + (178000.0 * (1.0 / 15800.0 + 1.0 / 220000.0)))
PS_ADC_ATTEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	2488	#define PS_ADC_ATTEN (15800.0/(15800.0+178000.0))
ushort	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	3229	typedef unsigned short ushort;
r0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6013		int     r0;
r1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6026		int     r1;
r2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6039		int     r2;
r3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6052		int     r3;
r4	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6065		int     r4;
r5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6078		int     r5;
r6	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6091		int     r6;
r7	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6104		int     r7;
r8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6117		int     r8;
r9	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6130		int     r9;
r10	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6143		int     r10;
r11	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6157		int     r11;
r12	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6171		int     r12;
lr	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6185		int     lr;        //14 words total    
LowPriorityThreadContext	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6218	}LowPriorityThreadContext;
paramTest	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6827	int paramTest = 2;  // for debugging
paramLowMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6865	int paramLowMass = 1;
paramHighMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6887	int paramHighMass = 45;
paramMassDacInit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6913	int paramMassDacInit; // = -1695634;
paramMassDacSlope	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6950	int paramMassDacSlope; // = 1112739;
paramResDacInit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	6987	int paramResDacInit; // = 40174772;
paramResDacSlope	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7023	int paramResDacSlope; // = 43288;
paramIonEnInit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7057	int paramIonEnInit; // = 144122005;
paramIonEnSlope	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7093	int paramIonEnSlope;
paramFilProp	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7150	float paramFilProp = 1024.0;
paramFilInteg	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7179	float paramFilInteg;  
paramFilDeriv	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7202	float paramFilDeriv = 10240.0;
paramDacPwmStep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7231	int paramDacPwmStep= 400;
paramTotalOffset	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7257	int paramTotalOffset = 2000;
paramPartialOffset	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7286	int paramPartialOffset = 2000;
paramEmissionSetpoint	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7362	float paramEmissionSetpoint; // = 0.66;
paramPiraniRoughCutoff	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7403	float paramPiraniRoughCutoff; // = 0.390696;
paramMode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7556	int paramMode = MODE_MASS_SWEEP;
paramFocus1Dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7589	int paramFocus1Dac; //  = 3558;
paramFocus2Dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7621	int paramFocus2Dac = 2335;
paramElEnDac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7648	int paramElEnDac = 2284;
paramDegasFocus2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7673	int paramDegasFocus2 = 500;
paramDegasElEn	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7701	int paramDegasElEn = 373;
paramDwell	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7755	int paramDwell; //  = 6;
paramSamples	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7780	int paramSamples; // = 264; 
paramSamplesPerAmu	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7809	int paramSamplesPerAmu; //  = 6;
paramSwSettleTicks	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7843	int paramSwSettleTicks = 10;
paramRfSettleTicks	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7872	int paramRfSettleTicks = 50;
paramAutozero	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7901	int paramAutozero;
paramFilamentOn	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7920	int paramFilamentOn = 1;
paramDegasToggle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7945	int paramDegasToggle = 52428;
paramMultVoltageDac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	7975	int paramMultVoltageDac; // = 1089;
ToHost	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8073	TToHost ToHost;
ysamples	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8086	int	ysamples[5000];
fil_update_cntr	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8116	volatile int fil_update_cntr;
DegasTimer	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8146	volatile int DegasTimer;
filament_status	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8173	arm_86_ushort filament_status;
sweep_point	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8205	arm_86_ushort sweep_point;
sweep_data	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8303	float sweep_data[40000];
currentDataSet	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8415	float *currentDataSet = sweep_data;
el_en_dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8459	arm_86_ushort el_en_dac;
focus2_dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8484	arm_86_ushort focus2_dac;
break_sweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8510	volatile int break_sweep, start_sweeping;
start_sweeping	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8523	volatile int break_sweep, start_sweeping;
sweepCount	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8543	int sweepCount;
paramAutoStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8560	int paramAutoStream = 1;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8749	void delay_ns(int nsec)	 low_memory;
delay_ns	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	8766	void delay_ns(int nsec)	//resolves 72 ns. with 55.296 mhz proc clock
a_to_d	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	9092	int a_to_d(unsigned int mux1address,unsigned int bank,unsigned int mux2address,unsigned int samples)
offset_dac_load	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	10201	void offset_dac_load(unsigned int dac_register)
slope	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15263	float slope,offset;
offset	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15269	float slope,offset;
emissionV330_error	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15283	float emissionV330_error;
derivative	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15309	float derivative;
emissionV330_n_1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15327	float emissionV330_n_1;
emissionV330	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15351	float emissionV330,emissionV330_2,total_torr,pirani_voltage;
emissionV330_2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15364	float emissionV330,emissionV330_2,total_torr,pirani_voltage;
total_torr	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15379	float emissionV330,emissionV330_2,total_torr,pirani_voltage;
pirani_voltage	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15390	float emissionV330,emissionV330_2,total_torr,pirani_voltage;
emissionV330_setpoint	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15412	float emissionV330_setpoint;
degas_emissionV20	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15441	float degas_emissionV20;
cur_offset_lo_range	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15466	float cur_offset_lo_range;
cur_offset_hi_range	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15493	float cur_offset_hi_range;
pwm	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15519	int pwm;
fil_dac_fine	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15530	float fil_dac_fine;
res_dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15548	int	res_dac,mass_dac,ion_dac,mult_dac;
mass_dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15556	int	res_dac,mass_dac,ion_dac,mult_dac;
ion_dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15565	int	res_dac,mass_dac,ion_dac,mult_dac;
mult_dac	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15573	int	res_dac,mass_dac,ion_dac,mult_dac;
total_k	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15587	int total_k;
filament_update	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	15602	void filament_update(void)
pos_lo_range_limit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	21600	int pos_lo_range_limit;
neg_lo_range_limit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	21624	int neg_lo_range_limit;
range	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	21648	int range; //,ticks;
conversionTicks	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	21669	int conversionTicks;
get_sample	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	21694	float get_sample(int mass_ptr, int tick_index, at91_reg amp, int ref_scan)        //gets sample to numerator and denominator
fil_current_check	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	26234	int	fil_current_check(unsigned int mux1address,unsigned int bank,unsigned int mux2address)
scan_status	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	27475	void scan_status(void)
takeReading	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	29076	float takeReading(int samplenum)
massSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	30169	void massSweep(void)
MAX_TREND_SAMPLES	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	30524	#define MAX_TREND_SAMPLES 50
trendDomain	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	30549	int trendDomain[MAX_TREND_SAMPLES];
trendAmu	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	30587	float trendAmu[MAX_TREND_SAMPLES];
amuToSampleNum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	30698	int amuToSampleNum(float amu)
trendSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	30812	void trendSweep(void)
isIdle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	31001	volatile int isIdle = 0;
HighPriorityThread	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	31019	void HighPriorityThread(void)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	32960	void initPwm(void)      low_memory;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	32996	void initUsart(void)    low_memory;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	33032	void initXcr3128(void)  low_memory;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	33068	void initPio(void)      low_memory;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	33104	void initAic(void)      low_memory;
initAic	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	33193	void initAic()
usart0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	33826	StructUSART *usart0; //  = USART0_BASE;
initUsart	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	33859	void initUsart()
initXcr3128	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	34490	void initXcr3128()
initPio	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	34732	void initPio()
initPwm	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	35366	void initPwm()
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	36612	void kickDog(void) low_memory;
kickDog	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	36629	void kickDog(void)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	36757	void initHardware(void) low_memory;
initHardware	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	36774	void initHardware(void)
ser_in_buf	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37440	char ser_in_buf[128];  // testing.  --ttd
ser_in_buf_tail	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37481	int	ser_in_buf_tail;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37521	int okayToSend(void) low_memory;
okayToSend	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37537	int okayToSend(void)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37620	int allSent(void) low_memory;
allSent	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37636	int allSent(void)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37729	int setBaudRate(int param) low_memory;
setBaudRate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37745	int setBaudRate(int param)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37824	int isCharAvail(void) low_memory;
isCharAvail	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	37840	int isCharAvail(void)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	38094	int getChar(void) low_memory;
getChar	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	38110	int getChar(void)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	38882	void SendByte ( u_int character ) low_memory;
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	38915	void putChar(int c) low_memory;
putChar	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	38932	void putChar(int c)
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	39208	void init_serial_io(void) low_memory;
init_serial_io	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	39225	void init_serial_io()
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	39822	void LowPriorityThread(void) low_memory;
LowPriorityThread	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	39839	void LowPriorityThread(void)
mem_copy	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	39893	void mem_copy(void *dest, void *src, int len)
stopSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	40031	void stopSweep(void)
startMassSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	40182	void startMassSweep(void)
startTrendSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	40290	void startTrendSweep(void)
outgoingChecksum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	40395	int outgoingChecksum;
SendByte	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	40420	void SendByte ( u_int character )
low_memory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	41081	void qpmain(void)  low_memory;
qpmain	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	41098	void qpmain(void)   //main is special, and if used, other things might happen like init runtime,etc.
output_s	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	41814	void output_s(char *s)
output_int	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	41954	void output_int(int arg)
output_unsigned	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	42049	void output_unsigned(int arg)
output_hex	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	42154	void output_hex(unsigned int arg)
output_float	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	42302	void output_float(float f)
tprintf	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	42446	void tprintf(char *fmt, ...)
base64Triple	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	43961	void base64Triple(int bits, int len)
st_bits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44354	unsigned int st_bits = 0;
st_count	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44371	int st_count = 0;
stream64Begin	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44391	void stream64Begin(void)
stream64End	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44449	void stream64End(void)
stream64Byte	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44583	void stream64Byte(char b)
stream64Bytes	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44768	void stream64Bytes(char *b, int len)
stream64Float	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44856	void stream64Float(float f)
str_eq	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	44934	int str_eq(char *lhs, char *rhs)
usingTag	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45118	    int usingTag;
usingChecksum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45136	    int usingChecksum;
Tag	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45159	    int Tag;
Epilog	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45166	} Epilog;
lastEpilog	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45183	Epilog lastEpilog, streamEpilog;
streamEpilog	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45195	Epilog lastEpilog, streamEpilog;
do_epilog	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45215	void do_epilog(Epilog *ep)
epilog	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45398	void epilog(void)
epilog_stream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45449	void epilog_stream(void)
emitError	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45509	void emitError(char *errmsg)
emitError2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45591	void emitError2(char *errmsg, char *s)
intval	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45741	    int intval;
floatval	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45759	    float floatval;
SymbolValue	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45771	} SymbolValue;
IntType	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45804	    IntType = 0,
FloatType	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45821	    FloatType = 1
SymbolType	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45837	} SymbolType;
None	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45869	    None = 0,
Output	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45883	    Output = 1,
Operating	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45899	    Operating = 2,
Calibration	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45918	    Calibration = 4,
Hardware	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45939	    Hardware = 64
SymbolCategory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45955	} SymbolCategory;
Symbol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	45987	typedef struct Symbol {
Symbol::name	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46006	    char *name;
Symbol::type	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46027	    SymbolType type;
Symbol::value	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46043	    void *value;
Symbol::getValue	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46112	    SymbolValue (*getValue)(struct Symbol *sym);
Symbol::setValue	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46221	    int (*setValue)(struct Symbol *sym, SymbolValue val);
Symbol::category	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46288	    SymbolCategory category;
Symbol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46300	} Symbol;
getval	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46443	SymbolValue getval(Symbol *sym)
setval	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46746	int setval(Symbol *sym, SymbolValue val)
setIntPositive	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	46961	int setIntPositive(Symbol *sym, SymbolValue val)
setRO	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47142	int setRO(Symbol *sym, SymbolValue val)
dummyInt	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47309	int dummyInt;
dummyFloat	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47325	float dummyFloat;
voltage	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47365	   float voltage;
pressure	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47383	   float pressure; // in torr
Tpirani_cal	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47406	} Tpirani_cal;
pirani_cal	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47438	const Tpirani_cal pirani_cal[] = {
minimum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47870	float minimum(float lhs, float rhs)
maximum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	47967	float maximum(float lhs, float rhs)
InterpolateSimple	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	48064	float InterpolateSimple(float in,float in_a,float in_b,float out_a,float out_b)
paramPiraniZero	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	48281	float paramPiraniZero = 0.32602f;
paramPirani1ATM	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	48315	float paramPirani1ATM = 2.32500f;
ConvertToPiraniPressure	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	48350	float ConvertToPiraniPressure(float voltage_in)
ConvertToPiraniVoltage	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	49292	float ConvertToPiraniVoltage(float pressure_in) 
getSupplyVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	50438	SymbolValue getSupplyVolts(Symbol *sym)
getPiraniOhms	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	50686	SymbolValue getPiraniOhms(Symbol *sym)
getPiraniTemp	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	50925	SymbolValue getPiraniTemp(Symbol *sym)
getQuadrupoleDegC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	51045	SymbolValue getQuadrupoleDegC(Symbol *sym)
getInteriorDegC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	51398	SymbolValue getInteriorDegC(Symbol *sym)
Limit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	51562	double Limit(double lowerBound,  double val, double upperBound)
paramElectronVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	51772	int paramElectronVolts = 70;
getIonizerVRI	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	51803	void getIonizerVRI(float *volts, float *ohms, float *amps)
getIonizerVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53000	SymbolValue getIonizerVolts(Symbol *sym)
getIonizerAmps	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53148	SymbolValue getIonizerAmps(Symbol *sym)
getIonizerOhms	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53294	SymbolValue getIonizerOhms(Symbol *sym)
getRfAmpVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53440	SymbolValue getRfAmpVolts(Symbol *sym)
getPiraniTorr	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53670	SymbolValue getPiraniTorr(Symbol *sym)
getPiraniVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53845	SymbolValue getPiraniVolts(Symbol *sym)
getReferenceVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	53973	SymbolValue getReferenceVolts(Symbol *sym)
getGroundVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54149	SymbolValue getGroundVolts(Symbol *sym)
NotStreaming	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54318	    NotStreaming,
RequestedToStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54336	    RequestedToStream,
IsStreaming	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54359	    IsStreaming,
RequestedToStop	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54376	    RequestedToStop
StreamState	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54394	} StreamState;
paramLastSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54412	int paramLastSweep;
StreamData	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54444	typedef struct StreamData
StreamData::streamType	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54465	    int streamType;  // MODE_MASS_SWEEP, MODE_TREND
StreamData::state	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54525	    StreamState state;
StreamData::fromSample	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54582	    int fromSample;
StreamData::toSample	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54602	    int toSample;
StreamData::LowMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54661	    int LowMass;
StreamData::HighMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54678	    int HighMass;
StreamData::SamplesPerAmu	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54696	    int SamplesPerAmu;
StreamData::ringSize	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54720	    int ringSize; // number of slots in the ring of datasets
StreamData::first	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54782	    int first;  // points to first item enqueued in ring
StreamData::next	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54839	    int next;   // points to next position to enqueue item
StreamData::sweepnum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54899	    int sweepnum;
StreamData::data	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54920	    float *data;
StreamData	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54928	} StreamData;
streamData	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	54953	StreamData streamData;
ringMod	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	55039	int ringMod(int lhs, int rhs)
elementsInRing	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	55148	int elementsInRing(void)
isFullRing	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	55329	int isFullRing(void)
addElementRing	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	55415	void addElementRing(void)
removeElementRing	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	55678	void removeElementRing(void)
removeElementsRing	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	55883	void removeElementsRing(int n)
dataForRingIndex	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	56101	float *dataForRingIndex(int ringIndex)
dataForSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	56304	float *dataForSweep(int sweepnum)
getFirstSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	56582	SymbolValue getFirstSweep(Symbol *sym)
getIdle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	56778	SymbolValue getIdle(Symbol *sym)
setLowMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	56864	int setLowMass(Symbol *sym, SymbolValue val)
setHighMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	57201	int setHighMass(Symbol *sym, SymbolValue val)
setSamplesPerAmu	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	57540	int setSamplesPerAmu(Symbol *sym, SymbolValue val)
paramScanSpeed	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	57810	float paramScanSpeed;
setScanSpeed	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	57831	int setScanSpeed(Symbol *sym, SymbolValue val)
paramFocus1Volts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	58990	int paramFocus1Volts;
setFocus1Volts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	59013	int setFocus1Volts(Symbol *sym, SymbolValue val)
paramBaudRate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	59360	int paramBaudRate = 9600;
setBaud	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	59387	int setBaud(Symbol *sym, SymbolValue val)
paramEncoding	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	60268	int paramEncoding = 10;
paramSamplesPerLine	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	60301	unsigned int paramSamplesPerLine = 1;
setEncoding	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	60331	int setEncoding(Symbol *sym, SymbolValue val)
paramMultiplierVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	60640	int paramMultiplierVolts;
setMultiplierVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	60680	int setMultiplierVolts(Symbol *sym, SymbolValue val)
setElectronVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	61197	int setElectronVolts(Symbol *sym, SymbolValue val)
paramFilamentEmissionMa	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	61715	float paramFilamentEmissionMa;
setFilamentEmissionMa	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	61745	int setFilamentEmissionMa(Symbol *sym, SymbolValue val)
sourceVoltage	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62107	float sourceVoltage(void)
actualSource1Ma	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62286	float actualSource1Ma(void)
getSourceGrid1Ma	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62402	SymbolValue getSourceGrid1Ma(Symbol *sym)
getSourceGrid2Ma	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62524	SymbolValue getSourceGrid2Ma(Symbol *sym)
getFilamentDacCoarse	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62677	SymbolValue getFilamentDacCoarse(Symbol *sym)
getFilamentDacFine	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62795	SymbolValue getFilamentDacFine(Symbol *sym)
getFilamentPowerPct	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	62909	SymbolValue getFilamentPowerPct(Symbol *sym)
getFocus1FB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63077	SymbolValue getFocus1FB(Symbol *sym)
getFbPlus	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63221	SymbolValue getFbPlus(Symbol *sym)
getFbMinus	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63320	SymbolValue getFbMinus(Symbol *sym)
getPiraniCorrVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63422	SymbolValue getPiraniCorrVolts(Symbol *sym)
getFilamentStatus	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63529	SymbolValue getFilamentStatus(Symbol *sym)
getDegasMa	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63670	SymbolValue getDegasMa(Symbol *sym)
paramLowCalMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63891	int paramLowCalMass = 1, paramHighCalMass = 300;
paramHighCalMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63912	int paramLowCalMass = 1, paramHighCalMass = 300;
paramLowCalResolution	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63940	int paramLowCalResolution = 615, paramHighCalResolution = 1800;
paramHighCalResolution	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	63969	int paramLowCalResolution = 615, paramHighCalResolution = 1800;
paramLowCalIonEnergy	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64006	float paramLowCalIonEnergy = 5.0, paramHighCalIonEnergy = 5.0;
paramHighCalIonEnergy	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64034	float paramLowCalIonEnergy = 5.0, paramHighCalIonEnergy = 5.0;
paramLowCalPosition	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64069	float paramLowCalPosition = 0.37, paramHighCalPosition = 0.10;
paramHighCalPosition	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64097	float paramLowCalPosition = 0.37, paramHighCalPosition = 0.10;
paramPartialCapPf	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64132	float paramPartialCapPf = 3.0;
paramTotalCapPf	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64163	float paramTotalCapPf = 10.0;
paramTotalSensitivity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64194	float paramTotalSensitivity = 1.0e1f; // (A/A)/torr
paramPartialSensitivity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64246	float paramPartialSensitivity = 0.6;  // mA/torr
getTotalPressureAmps	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64381	float getTotalPressureAmps(void)
getPressureAmps	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64712	SymbolValue getPressureAmps(Symbol *sym)
getPressureTorr	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	64808	SymbolValue getPressureTorr(Symbol *sym)
getRepellerVolts	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65060	SymbolValue getRepellerVolts(Symbol *sym)
getSerialNumber	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65204	SymbolValue getSerialNumber(Symbol *sym)
getModelNumber	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65322	SymbolValue getModelNumber(Symbol *sym)
paramVersionMajor	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65428	int paramVersionMajor = 0;
paramVersionMinor	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65455	int paramVersionMinor = 7;
start	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65507	    float start;
delta	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65524	    float delta;
Interpolation	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65533	} Interpolation;
Interpolate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	65941	Interpolation Interpolate(float MASS, int samples_per_amu, float HI, float LO)
computeStartMass	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	66464	double computeStartMass(double mass, int SamplesPerAMU)
IonDacVoltageOutput	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	66616	float IonDacVoltageOutput(float IonEnergy, float actualSR1current)
SYSTEM_CLOCK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	67115	#define SYSTEM_CLOCK                 55296000  // 55,296,000
VOLTS_DC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	67175	float VOLTS_DC(float mass)
setupMassSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	67303	void setupMassSweep(void)
symbolTable	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	68982	struct Symbol symbolTable[] = {
findSymbol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	76492	Symbol *findSymbol(char *name)
enableHighPriorityThread	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	76729	void enableHighPriorityThread(void)
strcpy	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	76936	void strcpy(char *dest, char *src)
hexDigit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	77133	char hexDigit(int v)
tempPow	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	77310	float tempPow(float v, int expon)
prfloat	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	77589	int prfloat(char *dest, int val, int dplace)
invLn2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78068	const double invLn2 = 1.4426950408889634073599246810018921;
Ln2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78128	const double Ln2 =    0.6931471805599453094172321214581766;
m_e	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78189	const double m_e = 2.7182818284590452354;
m_ehalf	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78231	const double m_ehalf = 1.6487212707;
m_equarter	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78268	const double m_equarter = 1.28402541669;
inv6	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78309	const double inv6 = 1.0 / 6.0;
inv24	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78340	const double inv24 = 1.0 / 24.0;
inv120	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78373	const double inv120 = 1.0 / 120.0;
huge	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78408	const double huge = 1.0e+300;
ovmax	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78438	const double ovmax = 88.722839;
Exp	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	78466	double Exp(float f)
floatval	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	79290	    float floatval;
bits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	79317	    unsigned int bits;
floatbits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	79325	} floatbits;
Log	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	79343	float Log(float f)
Log10	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	79866	float Log10(float f)
floatToDecimal	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	79970	void floatToDecimal(char *buf, double v)
intToHex	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	81569	void intToHex(char *buf, unsigned int val)
intToDecimal	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	81719	int intToDecimal(char *dest, int val)
unsignedToDecimal	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	82192	int unsignedToDecimal(char *dest, unsigned int uval)
floatToHex	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	82570	void floatToHex(char *buf, float val)
emitMassSamples	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	82700	void emitMassSamples(int from, int num)
emitTrendSamples	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	83362	void emitTrendSamples(int from, int num)
emitSamples	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	84025	void emitSamples(int from, int num)
startStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	84216	void startStream(int sweepnum, int fromSample, int toSample)
endStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	84912	void endStream(void)
lastAutoStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	85188	int lastAutoStream = 0;
serviceStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	85214	void serviceStream(void)
parametersChanged	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	87073	int parametersChanged(void)
setupStream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	87273	void setupStream(int streamType)
allocateDataSet	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	87610	float *allocateDataSet(void)
cmd_stop	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	87809	void cmd_stop(void)
reportSweepVariables	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	87909	void reportSweepVariables(void)
doMassSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	88089	void doMassSweep(void)
doTrendSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	88515	void doTrendSweep(void)
doSweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	88742	void doSweep(void)
cmd_stream	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	88890	void cmd_stream(void)
MaxFields	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	89126	#define MaxFields (10)
MaxFieldLength	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	89149	#define MaxFieldLength (20)
Argv	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	89174	char Argv[MaxFields][MaxFieldLength];
Argc	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	89211	int Argc;
cmd_sweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	89225	void cmd_sweep(void)
cmd_sample	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	89434	void cmd_sample(void)
skipWhitespace	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	90395	char *skipWhitespace(char *in)
scanInteger	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	90485	int scanInteger(char *in, int *result)
scanFloat	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	90820	int scanFloat(char *in, float *result)
symbolAssign	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	91604	int symbolAssign(Symbol *sym, char *numstr)
assignSymbol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	92155	int assignSymbol(char *name, SymbolValue val)
assignInt	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	92383	int assignInt(char *name, int val)
assignFloat	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	92466	int assignFloat(char *name, float val)
initializeParameters	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	92875	void initializeParameters(void)
printSymbol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	93211	void printSymbol(Symbol *sym, char *prefix)
printCategory	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	93531	void printCategory(int symbolCategory)
cmd_outputs	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	93785	void cmd_outputs(void)
cmd_calibration	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	93840	void cmd_calibration(void)
cmd_controls	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	93904	void cmd_controls(void)
cmd_hardware	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	93963	void cmd_hardware(void)
cmd_symbols	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	94022	void cmd_symbols(void)
cmd_set	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	94197	void cmd_set(void)
cmd_get	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	94606	void cmd_get(void)
ionCurrent	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	95147	float ionCurrent(float sample)
is_eol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	95656	int is_eol(int c)
getchar	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	95852	int getchar(void)
gets	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96152	void gets(char *buf, int bufsize)
Command	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96378	typedef struct Command {
Command::name	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96398	    char *name;
Command::func	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96415	    void (*func)(void);
Command	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96430	} Command;
Commands	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96448	Command Commands[] = {
findCommand	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	96791	Command *findCommand(char *name)
isSpace	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	97022	int isSpace(int ch)
isDigit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	97119	int isDigit(int ch)
isLetter	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	97184	int isLetter(int ch)
isAlnum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	97294	int isAlnum(int ch)
split	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	97362	void split(char *buf)
scanFor	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	97874	int scanFor(char *fieldname, int *value)
checksum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	98279	int checksum(void)
commandShell	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	98655	int commandShell(void)
do_nothing	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpbox.c	99582	int do_nothing(float a, float b)
W	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	467		unsigned volatile short		W[66];			//boot rom
SERIAL_NUMBER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	513		unsigned volatile short		SERIAL_NUMBER;	//start at 131 on 10/22/2003		
MODEL_NUMBER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	585		unsigned volatile short		MODEL_NUMBER;	//100,200,300		
EMPTY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	641		unsigned volatile short		EMPTY[28];			
ADDATA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	679		unsigned volatile int		ADDATA;			//0xc0 24 bits of data from A/D
DACDATA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	747		unsigned volatile short		DACDATA;		//0xc4 3 bit D/A data  Register 
DACLOAD	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	816		unsigned volatile short		DACLOAD;		//0xc6 D/A load Reg
CH1SWITCH	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	872		unsigned volatile short		CH1SWITCH;		//0xc8 2 bit address to electrometer switch faraday det		
CH2SWITCH	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	968		unsigned volatile short		CH2SWITCH;		//0xca 2 bit address, 2nd channel, b/a det		
OFFLOAD	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1051		unsigned volatile short		OFFLOAD;		//0xcc load.clock,data for offset dacs
OFFCLK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1126		unsigned volatile short		OFFCLK;			//0xce
OFFDATA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1169		unsigned volatile short		OFFDATA;		//0xd0
StructXCR3128	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1189	} StructXCR3128 ;
ResData	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1296	#define ResData				(1<<0)		/*to resolution D/A*/
PsData	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1345	#define PsData				(1<<1)		/*to power supply D/A*/
MassData	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1395	#define MassData			(1<<2)		/*to mass D/A*/
Focus2NoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1557	#define Focus2NoUpdate			(1<<12)	//Load input register A; DAC registers unchanged.
ResolutionNoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1640	#define ResolutionNoUpdate		(5<<12)	//Load input register B; DAC registers unchanged.
IonEnergyNoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1726	#define IonEnergyNoUpdate		(9<<12)	//Load input register C; DAC registers unchanged.
Focus1NoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1811	#define Focus1NoUpdate			(13<<12)//Load input register D; DAC registers unchanged.
Focus2UpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1894	#define Focus2UpdateAll			(3<<12)	//Load input register A; all DAC registers updated.
ResolutionUpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	1980	#define ResolutionUpdateAll		(7<<12)	//Load input register B; all DAC registers updated.
IonEnergyUpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2069	#define IonEnergyUpdateAll		(11<<12)//Load input register C; all DAC registers updated.
Focus1UpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2157	#define Focus1UpdateAll			(15<<12)//Load input register D; all DAC registers updated.
UpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2244	#define UpdateAll				(4<<12)//Update all DAC registers from their respective input registers (start-up).
LoadAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2349	#define LoadAll					(8<<12)//Load all DAC registers from shift register (start-up).
Shutdown	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2433	#define Shutdown				(12<<12)//Shutdown (provided PDL = 1)
UPOlo	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2491	#define UPOlo					(2<<12) //UPO goes low (default)
UPOhi	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2542	#define UPOhi					(6<<12)	//UPO goes high
NoOp	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2584	#define NoOp					(0<<12)	//No operation (NOP) to DAC registers
SCLKRising	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2647	#define SCLKRising				(14<<12)//Mode 1, DOUT clocked out on SCLK’s rising edge. All DAC registers updated
SCLKFalling	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2753	#define SCLKFalling				(10<<12)//Mode 0, DOUT clocked out on SCLK’s falling edge. All DAC registers updated (default).
FilFineNoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2883	#define FilFineNoUpdate			(1<<12)
HVNoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2917	#define HVNoUpdate				(5<<12)
FilCoarseNoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2947	#define FilCoarseNoUpdate		(9<<12)
ElEnergyNoUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	2982	#define ElEnergyNoUpdate		(13<<12)
FilFineUpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3017	#define FilFineUpdateAll		(3<<12)
HVUpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3051	#define HVUpdateAll				(7<<12)
FilCoarseUpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3082	#define FilCoarseUpdateAll		(11<<12)
ElEnergyUpdateAll	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3119	#define ElEnergyUpdateAll		(15<<12)
Fast	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3277	#define Fast				0
Hi_Range	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3295	#define Hi_Range			1
Integrate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3316	#define Integrate			2
Ref20mv	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3338	#define Ref20mv				3
PowerDown7612	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3466	#define PowerDown7612				(1<<13)
PowerUp7612	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3499	#define PowerUp7612					(0<<13)
Fast7612	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3531	#define Fast7612					(1<<14)
Slow7612	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3560	#define Slow7612					(0<<14)		//output amp uses less power
BAUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3652	#define BAUpdate				(0000<<12)		//write data to buffer and BA_offset (dac b)
BufferUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3729	#define BufferUpdate			(0001<<12)		//write data to buffer
FARUpdate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3787	#define FARUpdate				(1000<<12)		//write data to FAR_offset(daca) and buffer to BA_offset (dac b)
NOP7612	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	3885	#define NOP7612					(1001<<12)		//reserved
XCR3128_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\xcr3128.h	4118	#define XCR3128_BASE            ((StructXCR3128 *) XCR3128_BASE_ADDR)
wd_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	968	#define wd_h
WD_OMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1152	    at91_reg        WD_OMR ;        /* Overflow Mode Register */
WD_CMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1217	    at91_reg        WD_CMR ;        /* Clock Mode Register */
WD_CR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1279	    at91_reg        WD_CR ;         /* Control Register */
WD_SR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1338	    at91_reg        WD_SR ;         /* Status Register */
Reserved	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1396	    at91_reg        Reserved ;
WD_TLR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1427	    at91_reg        WD_TLR ;        /* Test Load Register : test purpose only */
StructWD	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1490	} StructWD ;
WDEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1699	#define WDEN            (1<<0)
RSTEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1759	#define RSTEN           (1<<1)
IRQEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1814	#define IRQEN           (1<<2)
EXTEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1875	#define EXTEN           (1<<3)
OKEY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	1947	#define OKEY            (0x234<<4)
WDCLKS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2147	#define WDCLKS          (3<<0)
WDClk8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2178	#define WDClk8          (0<<0)
WDClk32	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2209	#define WDClk32         (1<<0)
WDClk128	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2240	#define WDClk128        (2<<0)
WDClk1024	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2271	#define WDClk1024       (3<<0)
HPCV	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2336	#define HPCV            (0xF<<2)
CKEY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2402	#define CKEY            (0x06E<<7)
RSTKEY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2614	#define RSTKEY          0xC071
WDOVF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2822	#define WDOVF           (1<<0)
TypeWDHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	2982	typedef void (*TypeWDHandler) ( void ) ;
WD_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\wd.h	3148	#define WD_BASE         (( StructWD *) 0xFFFF8000 )
usart_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1010	#define usart_h
US_CR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1156	    at91_reg        US_CR ;         /* Control Register */
US_MR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1215	    at91_reg        US_MR ;         /* Mode Register */
US_IER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1271	    at91_reg        US_IER ;        /* Interrupt Enable Register */
US_IDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1339	    at91_reg        US_IDR ;        /* Interrupt Disable Register */
US_IMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1408	    at91_reg        US_IMR ;        /* Interrupt Mask Register */
US_CSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1474	    at91_reg        US_CSR ;        /* Channel Status Register */
US_RHR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1540	    at91_reg        US_RHR ;        /* Receive Holding Register */
US_THR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1607	    at91_reg        US_THR ;        /* Transmit Holding Register */
US_BRGR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1675	    at91_reg        US_BRGR ;       /* Baud Rate Generator Register */
US_RTOR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1746	    at91_reg        US_RTOR ;       /* Receiver Timeout Register */
US_TTGR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1814	    at91_reg        US_TTGR ;       /* Transmitter Timeguard Register */
Reserved	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1887	    at91_reg        Reserved ;
US_RPR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1918	    at91_reg        US_RPR ;        /* Receiver Pointer Register */
US_RCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	1986	    at91_reg        US_RCR ;        /* Receiver Counter Register */
US_TPR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2054	    at91_reg        US_TPR ;        /* Transmitter Pointer Register */
US_TCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2125	    at91_reg        US_TCR ;        /* Transmitter Counter Register */
StructUSART	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2178	} StructUSART ;
RSTRX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2291	#define RSTRX                   (1<<2)
RSTTX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2354	#define RSTTX                   (1<<3)
RXEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2415	#define RXEN                    (1<<4)
RXDIS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2477	#define RXDIS                   (1<<5)
TXEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2541	#define TXEN                    (1<<6)
TXDIS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2606	#define TXDIS                   (1<<7)
RSTSTA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2669	#define RSTSTA                  (1<<8)
STTBRK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2726	#define STTBRK                  (1<<9)
STPBRK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2782	#define STPBRK                  (1<<10)
STTTO	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2842	#define STTTO                   (1<<11)
SENDA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2901	#define SENDA                   (1<<12)
FORCEL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	2958	#define FORCEL                  (1<<15)
CLKS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3082	#define CLKS                    (3<<4)
USClk_MCK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3121	#define USClk_MCK               (0<<4)
USClk_MCK8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3160	#define USClk_MCK8              (1<<4)
USClk_SCK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3199	#define USClk_SCK               (2<<4)
CHRL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3257	#define CHRL                    (3<<6)
FiveBits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3296	#define FiveBits                (0<<6)
SixBits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3335	#define SixBits                 (1<<6)
SevenBits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3374	#define SevenBits               (2<<6)
EightBits	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3413	#define EightBits               (3<<6)
SYNC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3483	#define SYNC                    (1<<8)
PAR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3541	#define PAR                     (7<<9)
EvenParity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3580	#define EvenParity              (0<<9)
OddParity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3619	#define OddParity               (1<<9)
SpaceParity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3658	#define SpaceParity             (2<<9)
MarkParity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3697	#define MarkParity              (3<<9)
NoParity	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3736	#define NoParity                (4<<9)
MultiDropMode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3775	#define MultiDropMode           (6<<9)
NBSTOP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3837	#define NBSTOP                  (3<<12)
Stop1Bit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3877	#define Stop1Bit                (0<<12)
Stop1_5Bit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3917	#define Stop1_5Bit              (1<<12)
Stop2Bit	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	3957	#define Stop2Bit                (2<<12)
CHMODE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4017	#define CHMODE                  (3<<14)
NormalMode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4057	#define NormalMode              (0<<14)
AutomaticEcho	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4097	#define AutomaticEcho           (1<<14)
LocalLoopback	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4137	#define LocalLoopback           (2<<14)
RemoteLoopback	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4177	#define RemoteLoopback          (3<<14)
MODE9	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4235	#define MODE9                   (1<<17)
CLKO	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4306	#define CLKO                    (1<<18)
StandardAsyncMode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4410	#define StandardAsyncMode   ( NormalMode +  Stop1Bit + NoParity +  EightBits + USClk_MCK )
ExternalStandardAsyncMode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4574	#define ExternalStandardAsyncMode   ( NormalMode +  Stop1Bit + NoParity + EightBits + USClk_SCK )
StandardSyncMode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4735	#define StandardSyncMode    ( SYNC +  NormalMode + Stop1Bit + NoParity + EightBits + USClk_MCK )
SCK_USED	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	4854	#define SCK_USED                (CLKO | USClk_SCK)
RXRDY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5018	#define RXRDY                   (1<<0)
TXRDY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5082	#define TXRDY                   (1<<1)
RXBRK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5143	#define RXBRK                   (1<<2)
ENDRX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5218	#define ENDRX                   (1<<3)
ENDTX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5296	#define ENDTX                   (1<<4)
OVRE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5356	#define OVRE                    (1<<5)
FRAME	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5416	#define FRAME                   (1<<6)
PARE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5475	#define PARE                    (1<<7)
TIMEOUT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5538	#define TIMEOUT                 (1<<8)
TXEMPTY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5602	#define TXEMPTY                 (1<<9)
MASK_IRQ_TX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5642	#define MASK_IRQ_TX             (TXRDY | ENDTX | TXEMPTY)
MASK_IRQ_RX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5700	#define MASK_IRQ_RX             (RXRDY | ENDRX | TIMEOUT)
MASK_IRQ_ERROR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5758	#define MASK_IRQ_ERROR          (PARE | FRAME | OVRE | RXBRK)
TypeUSARTHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	5937	typedef void (*TypeUSARTHandler) ( StructUSART *usart_pt ) ;
ErrorMask	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6138	    u_int                   ErrorMask ;
ErrorHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6178	    TypeUSARTHandler        ErrorHandler ;
RxMask	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6221	    u_int                   RxMask ;
RxHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6258	    TypeUSARTHandler        RxHandler ;
TxMask	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6298	    u_int                   TxMask ;
TxHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6335	    TypeUSARTHandler        TxHandler ;
StructUSARTHandlerTable	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6349	} StructUSARTHandlerTable ;
NB_USART	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6497	#define NB_USART            2
USART0_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6527	#define USART0_BASE     ((StructUSART *) 0xFFFD0000)
USART1_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\usart.h	6580	#define USART1_BASE     ((StructUSART *) 0xFFFCC000)
tc_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1030	#define tc_h
TC_CCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1173	    at91_reg        TC_CCR ;        /* Control Register */
TC_CMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1232	    at91_reg        TC_CMR ;        /* Mode Register */
Reserved0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1288	    at91_reg        Reserved0 ;
Reserved1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1320	    at91_reg        Reserved1 ;
TC_CV	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1352	    at91_reg        TC_CV ;         /* Counter value */
TC_RA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1408	    at91_reg        TC_RA ;         /* Register A */
TC_RB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1461	    at91_reg        TC_RB ;         /* Register B */
TC_RC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1514	    at91_reg        TC_RC ;         /* Register C */
TC_SR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1567	    at91_reg        TC_SR ;         /* Status Register */
TC_IER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1625	    at91_reg        TC_IER ;        /* Interrupt Enable Register */
TC_IDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1693	    at91_reg        TC_IDR ;        /* Interrupt Disable Register */
TC_IMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1762	    at91_reg        TC_IMR ;        /* Interrupt Mask Register */
Reserved2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1828	    at91_reg        Reserved2 ;
Reserved3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1860	    at91_reg        Reserved3 ;
Reserved4	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1892	    at91_reg        Reserved4 ;
Reserved5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1924	    at91_reg        Reserved5 ;
StructTC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1938	} StructTC ;
NB_TC_CHANNEL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	1958	#define NB_TC_CHANNEL       3
TC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2018	    StructTC        TC[NB_TC_CHANNEL] ;
TC_BCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2058	    at91_reg        TC_BCR ;        /* Block Control Register */
TC_BMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2123	    at91_reg        TC_BMR ;        /* Block Mode Register  */
StructTCBlock	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2168	} StructTCBlock ;
CLKEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2352	#define CLKEN           (1<<0)
CLKDIS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2383	#define CLKDIS          (1<<1)
SWTRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2414	#define SWTRG           (1<<2)
EdgeNone	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2619	#define EdgeNone        ((u_int)0)
RisingEdge	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2654	#define RisingEdge      ((u_int)1)
FallingEdge	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2689	#define FallingEdge     ((u_int)2)
BothEdge	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2724	#define BothEdge        ((u_int)3)
OutputNone	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2792	#define OutputNone      ((u_int)0)
SetOutput	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2827	#define SetOutput       ((u_int)1)
ClearOutput	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2862	#define ClearOutput     ((u_int)2)
ToggleOutput	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2897	#define ToggleOutput    ((u_int)3)
TCCLKS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2955	#define TCCLKS          (7<<0)
TCMCK2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	2986	#define TCMCK2          (0<<0)
TCMCK8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3017	#define TCMCK8          (1<<0)
TCMCK32	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3048	#define TCMCK32         (2<<0)
TCMCK128	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3079	#define TCMCK128        (3<<0)
TCMCK1024	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3110	#define TCMCK1024       (4<<0)
TCXc0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3141	#define TCXc0           (5<<0)
TCXc1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3172	#define TCXc1           (6<<0)
TCXc2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3203	#define TCXc2           (7<<0)
CLKI	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3257	#define CLKI            (1<<3)
BURST	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3318	#define BURST           (3<<4)
BurstNone	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3349	#define BurstNone       (0<<4)
BurstXc0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3380	#define BurstXc0        (1<<4)
BurstXc1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3411	#define BurstXc1        (2<<4)
BurstXc2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3442	#define BurstXc2        (3<<4)
LDBSTOP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3533	#define LDBSTOP         (1<<6)
CPCSTOP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3624	#define CPCSTOP         (1<<6)
LDBDIS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3716	#define LDBDIS          (1<<7)
CPCDIS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3808	#define CPCDIS          (1<<7)
B_ETRGEDG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3893	#define B_ETRGEDG       8
ETRGEDG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	3919	#define ETRGEDG         (3<<B_ETRGEDG)
B_EEVTEDG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4010	#define B_EEVTEDG       8
EEVTEDG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4036	#define EEVTEDG         (3<<B_EEVTEDG)
ABETRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4137	#define ABETRG          (1<<10)
B_EEVT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4216	#define B_EEVT          10
EEVT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4243	#define EEVT            (3<<B_EEVT)
EEVTTiob	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4279	#define EEVTTiob        (0<<B_EEVT)
EEVTXc0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4315	#define EEVTXc0         (1<<B_EEVT)
EEVTXc1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4351	#define EEVTXc1         (2<<B_EEVT)
EEVTXc2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4387	#define EEVTXc2         (3<<B_EEVT)
ENETRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4479	#define ENETRG          (1<<12)
CPCTRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4551	#define CPCTRG          (1<<14)
WAVE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4605	#define WAVE            (1<<15)
CAPT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4637	#define CAPT            (0<<15)
B_LDRA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4712	#define B_LDRA          16
LDRA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4739	#define LDRA            (3<<B_LDRA)
B_ACPA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4823	#define B_ACPA          16
ACPA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4850	#define ACPA            (3<<B_ACPA)
B_LDRB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4929	#define B_LDRB          18
LDRB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	4956	#define LDRB            (3<<B_LDRB)
B_ACPC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5040	#define B_ACPC          18
ACPC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5067	#define ACPC            (3<<B_ACPC)
B_AEEVT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5156	#define B_AEEVT         20
AEEVT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5183	#define AEEVT           (3<<B_AEEVT)
B_ASWTRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5275	#define B_ASWTRG        22
ASWTRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5302	#define ASWTRG          (3<<B_ASWTRG)
B_BCPB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5389	#define B_BCPB          24
BCPB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5416	#define BCPB            (3<<B_BCPB)
B_BCPC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5501	#define B_BCPC          26
BCPC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5528	#define BCPC            (3<<B_BCPC)
B_BEEVT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5617	#define B_BEEVT         28
BEEVT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5644	#define BEEVT           (3<<B_BEEVT)
B_BSWTRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5736	#define B_BSWTRG        30
BSWTRG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5763	#define BSWTRG          (((u_int)3)<<B_BSWTRG)
COVFS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	5997	#define COVFS           (1<<0)
LOVRS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6054	#define LOVRS           (1<<1)
CPAS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6109	#define CPAS            (1<<2)
CPBS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6164	#define CPBS            (1<<3)
CPCS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6219	#define CPCS            (1<<4)
LDRAS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6274	#define LDRAS           (1<<5)
LDRBS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6329	#define LDRBS           (1<<6)
ETRGS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6390	#define ETRGS           (1<<7)
CLKSTA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6440	#define CLKSTA          (1<<16)
MTIOA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6490	#define MTIOA           (1<<17)
MTIOB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6540	#define MTIOB           (1<<18)
TCSYNC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6780	#define TCSYNC          1
B_TC0XC0S	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	6975	#define B_TC0XC0S       0
TC0XC0S	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7001	#define TC0XC0S         (3<<B_TC0XC0S)
TCLK0XC0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7041	#define TCLK0XC0        (0<<B_TC0XC0S)
NONEXC0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7080	#define NONEXC0         (1<<B_TC0XC0S)
TIOA1XC0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7119	#define TIOA1XC0        (2<<B_TC0XC0S)
TIOA2XC0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7158	#define TIOA2XC0        (3<<B_TC0XC0S)
B_TC1XC1S	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7198	#define B_TC1XC1S       2
TC1XC1S	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7224	#define TC1XC1S         (3<<B_TC1XC1S)
TCLK1XC1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7264	#define TCLK1XC1        (0<<B_TC1XC1S)
NONEXC1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7303	#define NONEXC1         (1<<B_TC1XC1S)
TIOA0XC1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7342	#define TIOA0XC1        (2<<B_TC1XC1S)
TIOA2XC1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7381	#define TIOA2XC1        (3<<B_TC1XC1S)
B_TC2XC2S	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7421	#define B_TC2XC2S       4
TC2XC2S	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7447	#define TC2XC2S         (3<<B_TC2XC2S)
TCLK2XC2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7487	#define TCLK2XC2        (0<<B_TC2XC2S)
NONEXC2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7526	#define NONEXC2         (1<<B_TC2XC2S)
TIOA0XC2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7565	#define TIOA0XC2        (2<<B_TC2XC2S)
TIOA1XC2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7604	#define TIOA1XC2        (3<<B_TC2XC2S)
TypeTCHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7784	typedef void (*TypeTCHandler) ( StructTC *tc_pt ) ;
NB_TC_BLOCK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7961	#define NB_TC_BLOCK     1
NB_TIMER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	7987	#define NB_TIMER        (NB_TC_BLOCK*NB_TC_CHANNEL)
TCB0_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\tc.h	8039	#define TCB0_BASE       ((StructTCBlock *)0xFFFE0000)
std_c_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	976	#define std_c_h
at91	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	992	#define at91
u_int	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	1083	typedef unsigned int        u_int   ;
u_short	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	1121	typedef unsigned short      u_short ;
u_char	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	1159	typedef unsigned char       u_char ;
at91_reg	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	1231	#define at91_reg            volatile u_int
TRUE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	1332	#define TRUE                1
FALSE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\std_c.h	1362	#define FALSE               0
sf_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	967	#define sf_h
SF_CIDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1169	    at91_reg    SF_CIDR ;       /* Chip Identification Register */
SF_EXID	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1236	    at91_reg    SF_EXID ;       /* Chip Identification Extension */
SF_RSF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1304	    at91_reg    SF_RSF ;        /* Reset Status Flag */
StructSF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1346	} StructSF ;
VERSION	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1541	#define VERSION         (0x1F<<0)
NVPSIZ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1615	#define NVPSIZ          (0x0F<<8)
NVDSIZ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1686	#define NVDSIZ          (0x0F<<12)
VDSIZ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1754	#define VDSIZ           (0x0F<<16)
ARCH	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1814	#define ARCH            (0xFF<<20)
NVPTYP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1889	#define NVPTYP          (0x07<<28)
EXT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	1946	#define EXT             ((u_int)0x01<<31)
EXT_RESET	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	2095	#define EXT_RESET       0x6C
WD_RESET	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	2124	#define WD_RESET        0x53
SF_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\sf.h	2285	#define SF_BASE         ((StructSF *) 0xFFF00000 )
ARM_MEM_LOC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	48	#define ARM_MEM_LOC				0x300000	//before remap, must recompile and load boot if changed
ARM_MEM_SIZE_MAX	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	136	#define ARM_MEM_SIZE_MAX		0x8000	//max size of arm program (.text) executables, not data	
ARM_MAX_SIZE_DUMP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	226	#define ARM_MAX_SIZE_DUMP		0x10000	//for debugging, data memory, not program space
ARM_HPTHREAD_STACK_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	309	#define ARM_HPTHREAD_STACK_SIZE	0x1000	//for HighPriorityThread
ARM_LPTHREAD_STACK_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	373	#define ARM_LPTHREAD_STACK_SIZE	0x1000	//for LOWPriorityThread
TIME_OUT_DELAY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	436	#define TIME_OUT_DELAY			1000		//for serial input
ARM_INST_FREQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	486	#define ARM_INST_FREQ			SYSTEM_CLOCK
PWM_DIVISOR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	523	#define PWM_DIVISOR				384	/* PWM FREQUENCY= ARM_INST_FREQ/PWM_DIVISOR/2 (should be about 70 khz) and
ARM_CODE_FILENAME	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	770	#define ARM_CODE_FILENAME		"C:\\Mydocuments\\MyProjects\\VacuumPlus\\vacmon\\qpbox.cod"
MAP_CODE_FILENAME	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	858	#define MAP_CODE_FILENAME		"C:\\Mydocuments\\MyProjects\\VacuumPlus\\qpdsp\\qpbox.map"
XCR3128_BASE_ADDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	945	#define XCR3128_BASE_ADDR		0x00400000
BOOT_BAUD_RATE_GEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	984	#define BOOT_BAUD_RATE_GEN			(SYSTEM_CLOCK / (16 * BOOT_BAUD_RATE)) 
OP_BAUD_RATE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	1054	#define OP_BAUD_RATE				115200
OP_BAUD_RATE_GEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	1085	#define OP_BAUD_RATE_GEN			(SYSTEM_CLOCK / (16 * OP_BAUD_RATE)) 
SER_IN_RING_BUF_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\qpboxconstants.h	1150	#define SER_IN_RING_BUF_SIZE	5000
ps_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ps.h	972	#define ps_h
PS_CR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ps.h	1132	    at91_reg    PS_CR ; /* Control Register */
StructPS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ps.h	1165	} StructPS ;
ARM7DIS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ps.h	1342	#define ARM7DIS         (1<<0)
PS_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ps.h	1505	#define PS_BASE         ((StructPS *) 0xFFFF4000 )
prior_irq_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1000	#define prior_irq_h
SW_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1139	#define SW_IRQ_PRIORITY             4
USART0_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1177	#define USART0_IRQ_PRIORITY         4
USART1_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1215	#define USART1_IRQ_PRIORITY         4
TC0_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1253	#define TC0_IRQ_PRIORITY            3
TC1_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1291	#define TC1_IRQ_PRIORITY            3
TC2_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1329	#define TC2_IRQ_PRIORITY            3
PIO_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1367	#define PIO_IRQ_PRIORITY            5
WD_IRQ_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1405	#define WD_IRQ_PRIORITY             6
IRQ0_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1443	#define IRQ0_PRIORITY               3
IRQ1_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1481	#define IRQ1_PRIORITY               3
IRQ2_PRIORITY	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\prior_irq.h	1519	#define IRQ2_PRIORITY               3
pio_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1018	#define pio_h
PIO_PER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1213	    at91_reg        PIO_PER ;           /* PIO Enable Register */
PIO_PDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1279	    at91_reg        PIO_PDR ;           /* PIO Disable Register */
PIO_PSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1346	    at91_reg        PIO_PSR ;           /* PIO Status Register */
Reserved0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1412	    at91_reg        Reserved0 ;
PIO_OER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1444	    at91_reg        PIO_OER ;           /* Output Enable Register */
PIO_ODR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1513	    at91_reg        PIO_ODR ;           /* Output Disable Register */
PIO_OSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1583	    at91_reg        PIO_OSR ;           /* Output Status Register */
Reserved1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1652	    at91_reg        Reserved1 ;
PIO_IFER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1684	    at91_reg        PIO_IFER ;          /* Input Filter Enable Register */
PIO_IFDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1759	    at91_reg        PIO_IFDR ;          /* Input Filter Disable Register */
PIO_IFSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1835	    at91_reg        PIO_IFSR ;          /* Input Filter Status Register */
Reserved2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1910	    at91_reg        Reserved2 ;
PIO_SODR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	1942	    at91_reg        PIO_SODR ;          /* Set Output Data Register */
PIO_CODR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2013	    at91_reg        PIO_CODR ;          /* Clear Output Data Register */
PIO_ODSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2086	    at91_reg        PIO_ODSR ;          /* Output Data Status Register */
PIO_PDSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2160	    at91_reg        PIO_PDSR ;          /* Pin Data Status Register */
PIO_IER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2231	    at91_reg        PIO_IER ;           /* Interrupt Enable Register */
PIO_IDR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2303	    at91_reg        PIO_IDR ;           /* Interrupt Disable Register */
PIO_IMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2376	    at91_reg        PIO_IMR ;           /* Interrupt Mask Register */
PIO_ISR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2446	    at91_reg        PIO_ISR ;           /* Interrupt Status Register */
StructPIO	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2500	} StructPIO ;
TypePIOHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2631	typedef void (*TypePIOHandler) ( StructPIO *pio_pt, u_int pio_mask ) ;
NB_PIO_CTRL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2857	#define NB_PIO_CTRL     1
PIO_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2902	#define PIO_BASE        ((StructPIO *) 0xFFFF0000 )
NB_PIO	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	2980	#define NB_PIO          32
P0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3043	#define P0              (1<<0)
P1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3074	#define P1              (1<<1)
P2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3105	#define P2              (1<<2)
P3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3136	#define P3              (1<<3)
P4	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3167	#define P4              (1<<4)
P5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3198	#define P5              (1<<5)
P6	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3229	#define P6              (1<<6)
P7	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3260	#define P7              (1<<7)
P8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3291	#define P8              (1<<8)
P9	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3322	#define P9              (1<<9)
P10	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3353	#define P10             (1<<10)
P11	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3385	#define P11             (1<<11)
P12	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3417	#define P12             (1<<12)
P13	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3449	#define P13             (1<<13)
P14	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3481	#define P14             (1<<14)
P15	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3513	#define P15             (1<<15)
P16	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3545	#define P16             (1<<16)
P17	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3577	#define P17             (1<<17)
P18	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3609	#define P18             (1<<18)
P19	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3641	#define P19             (1<<19)
P20	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3673	#define P20             (1<<20)
P21	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3705	#define P21             (1<<21)
P22	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3737	#define P22             (1<<22)
P23	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3769	#define P23             (1<<23)
P24	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3801	#define P24             (1<<24)
P25	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3833	#define P25             (1<<25)
P26	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3865	#define P26             (1<<26)
P27	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3897	#define P27             (1<<27)
P28	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3929	#define P28             (1<<28)
P29	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3961	#define P29             (1<<29)
P30	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	3993	#define P30             (1<<30)
P31	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4025	#define P31             (1<<31)
PIO_CTRL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4132	#define PIO_CTRL        0
PIO_TC0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4159	#define PIO_TC0         PIO_CTRL
TCLK0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4192	#define TCLK0           P0
TIOA0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4219	#define TIOA0           P1
TIOB0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4246	#define TIOB0           P2
PIN_TC0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4273	#define PIN_TC0         (TIOA0|TIOB0|TCLK0)
PIO_TC1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4318	#define PIO_TC1         PIO_CTRL
TCLK1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4351	#define TCLK1           P3
TIOA1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4378	#define TIOA1           P4
TIOB1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4405	#define TIOB1           P5
PIN_TC1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4432	#define PIN_TC1         (TIOA1|TIOB1|TCLK1)
PIO_TC2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4477	#define PIO_TC2         PIO_CTRL
TCLK2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4510	#define TCLK2           P6
TIOA2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4537	#define TIOA2           P7
TIOB2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4564	#define TIOB2           P8
PIN_TC2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4591	#define PIN_TC2         (TIOA2|TIOB2|TCLK2)
PIO_EXT_IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4636	#define PIO_EXT_IRQ     PIO_CTRL
PIN_IRQ0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4669	#define PIN_IRQ0        P9
PIN_IRQ1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4696	#define PIN_IRQ1        P10
PIN_IRQ2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4724	#define PIN_IRQ2        P11
PIN_FIQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4752	#define PIN_FIQ         P12
PIO_USART0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4781	#define PIO_USART0      PIO_CTRL
SCK0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4814	#define SCK0            P13
TXD0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4842	#define TXD0            P14
RXD0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4870	#define RXD0            P15
PIN_USART0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4898	#define PIN_USART0      (SCK0|TXD0|RXD0)
PIO_USART1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4940	#define PIO_USART1      PIO_CTRL
SCK1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	4973	#define SCK1            P20
TXD1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5001	#define TXD1            P21
RXD1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5029	#define RXD1            P22
PIN_USART1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5057	#define PIN_USART1      (SCK1|TXD1|RXD1)
MCKO	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5099	#define MCKO            P25
CS2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5127	#define CS2             P26
CS3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5155	#define CS3             P27
CS4	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5183	#define CS4             P31
CS5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5211	#define CS5             P30
CS6	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5239	#define CS6             P29
CS7	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5267	#define CS7             P28
XCRES	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5313	#define XCRES			P0
PWM	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5332	#define PWM				P1
PORTEN	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5390	#define PORTEN			P5
IRQAD	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5450	#define IRQAD			P9
MUXADRRFA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5469	#define MUXADRRFA		P11
MUXADRRFB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5492	#define MUXADRRFB		P12
MUXADRRFC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5515	#define MUXADRRFC		P13
MUXSELRF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5539	#define MUXSELRF		(3<<18)
MUXSELRFA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5565	#define MUXSELRFA		P18			//lo to select
MUXSELRFB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5605	#define MUXSELRFB		P19
MUXSELRFBOTH	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5628	#define MUXSELRFBOTH	(P18 & P19)
MUXADRRF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5662	#define MUXADRRF		(7<<11)
MUXADRSR2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5746	#define MUXADRSR2		(0<<11),MUXSELRFA,MUX_DIFF
MUXADRSR1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5792	#define MUXADRSR1		(1<<11),MUXSELRFA,MUX_DIFF
MUXADRRFAMPL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5838	#define MUXADRRFAMPL	(2<<11),MUXSELRFA,MUX_DIFF
MUXADRPIRTEMP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5886	#define MUXADRPIRTEMP	(3<<11),MUXSELRFA,MUX_DIFF
MUXADRPIRCORR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5935	#define MUXADRPIRCORR	(4<<11),MUXSELRFA,MUX_DIFF
MUXADRGND	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	5984	#define MUXADRGND		(5<<11),MUXSELRFA,MUX_DIFF
MUXADRIDLE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6030	#define MUXADRIDLE		(5<<11),MUXSELRFA			//keep inputs grounded when not using this mux
MUXADRPIRPRES	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6117	#define MUXADRPIRPRES	(6<<11),MUXSELRFA,MUX_DIFF
MUXADRDEGASCUR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6166	#define MUXADRDEGASCUR	(7<<11),MUXSELRFA,MUX_DIFF
MUXADRDCPLUS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6229	#define MUXADRDCPLUS	(0<<11),MUXSELRFB,MUX_DIFF
MUXADRFOCUS2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6277	#define MUXADRFOCUS2	(1<<11),MUXSELRFB,MUX_DIFF
MUXADRREF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6325	#define MUXADRREF		(2<<11),MUXSELRFB,MUX_DIFF
MUXADRDCMINUS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6371	#define MUXADRDCMINUS	(3<<11),MUXSELRFB,MUX_DIFF
MUXADRINTTEMP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6420	#define MUXADRINTTEMP	(4<<11),MUXSELRFB,MUX_DIFF
MUXADRFOCUS1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6469	#define MUXADRFOCUS1	(5<<11),MUXSELRFB,MUX_DIFF
MUXADRFILV	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6517	#define MUXADRFILV		(6<<11),MUXSELRFB,MUX_DIFF
MUXADRPSVOLTS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6564	#define MUXADRPSVOLTS	(7<<11),MUXSELRFB,MUX_DIFF
MUXADRBA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6656	#define MUXADRBA		MUXADRIDLE,MUX_BA
MUXADRFAR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6692	#define MUXADRFAR		MUXADRIDLE,MUX_FAR
DTR_TDI	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6806	#define DTR_TDI			P16
DTR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6828	#define DTR				P16
RTS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6847	#define RTS				P22
RXD1_TMS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6866	#define RXD1_TMS		P22
DSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6888	#define DSR				P17
WDOG	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	6908	#define WDOG			P20
MUXSELA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7002	#define MUXSELA			P23
MUXSELB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7024	#define MUXSELB			P24
DSP_MUX_CHANNEL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7046	#define DSP_MUX_CHANNEL	(3<<23)
MUX_BA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7078	#define MUX_BA			(0<<23)
MUX_SE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7103	#define MUX_SE			(1<<23)		//measure differential signal
MUX_DIFF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7159	#define MUX_DIFF		(2<<23)		//measure single ended signal, gnd ref to ba/far shields
MUX_FAR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\pio.h	7243	#define MUX_FAR			(3<<23)
int_mem	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	978	#define int_mem.h
RAM_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1103	#define RAM_BASE            ((u_int *)0x00000000)
RAM_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1153	#define RAM_SIZE            4096
RAM_LIMIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1186	#define RAM_LIMIT           (((u_int)RAM_BASE) + RAM_SIZE)
RAM_BASE_BOOT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1358	#define RAM_BASE_BOOT       ((u_int *)0x00300000)
INT_ROM_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1650	#define INT_ROM_BASE        ((u_int *)0x00100000)
MAX_INT_ROM_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1700	#define MAX_INT_ROM_SIZE    (1024*1024)
INT_ROM_LIMIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\int_mem.h	1740	#define INT_ROM_LIMIT       (((u_int)INT_ROM_BASE) + MAX_INT_ROM_SIZE)
ebi_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	987	#define ebi_h
EBI_CSR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1167	    at91_reg        EBI_CSR[8] ;        /* Chip Select Register */
EBI_RCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1234	    at91_reg        EBI_RCR ;           /* Remap Control Register */
EBI_MCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1303	    at91_reg        EBI_MCR ;           /* Memory Control Register */
StructEBI	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1355	} StructEBI ;
DataBus16	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1482	#define DataBus16               (1<<0)
DataBus8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1521	#define DataBus8                (2<<0)
DBW	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1560	#define DBW                     (3<<0)
B_NWS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1628	#define B_NWS                   2
WaitState1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1662	#define WaitState1              (0<<B_NWS)
WaitState2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1705	#define WaitState2              (1<<B_NWS)
WaitState3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1748	#define WaitState3              (2<<B_NWS)
WaitState4	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1791	#define WaitState4              (3<<B_NWS)
WaitState5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1834	#define WaitState5              (4<<B_NWS)
WaitState6	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1877	#define WaitState6              (5<<B_NWS)
WaitState7	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1920	#define WaitState7              (6<<B_NWS)
WaitState8	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	1963	#define WaitState8              (7<<B_NWS)
NWS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2006	#define NWS                     (7<<B_NWS)
WaitStateDisable	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2074	#define WaitStateDisable        (0<<5)
WaitStateEnable	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2113	#define WaitStateEnable         (1<<5)
WSE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2152	#define WSE                     (1<<5)
PageSize1M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2208	#define PageSize1M              (0<<7)
PageSize4M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2247	#define PageSize4M              (1<<7)
PageSize16M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2286	#define PageSize16M             (2<<7)
PageSize64M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2325	#define PageSize64M             (3<<7)
PAGES	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2364	#define PAGES                   (3<<7)
B_TDF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2455	#define B_TDF                   9
tDF_0cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2489	#define tDF_0cycle              (0<<B_TDF)
tDF_1cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2532	#define tDF_1cycle              (1<<B_TDF)
tDF_2cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2575	#define tDF_2cycle              (2<<B_TDF)
tDF_3cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2618	#define tDF_3cycle              (3<<B_TDF)
tDF_4cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2661	#define tDF_4cycle              (4<<B_TDF)
tDF_5cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2704	#define tDF_5cycle              (5<<B_TDF)
tDF_6cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2747	#define tDF_6cycle              (6<<B_TDF)
tDF_7cycle	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2790	#define tDF_7cycle              (7<<B_TDF)
TDF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2833	#define TDF                     (7<<B_TDF)
ByteWriteAccessType	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2900	#define ByteWriteAccessType (0<<12)
ByteSelectAccessType	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2936	#define ByteSelectAccessType    (1<<12)
BAT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	2976	#define BAT                     (1<<12)
CSEnable	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3042	#define CSEnable                (1<<13)
CSDisable	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3082	#define CSDisable               (0<<13)
CSE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3122	#define CSE                     (1<<13)
BA	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3163	#define BA                      ((u_int)(0xFFF)<<20)
ALE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3334	#define ALE                     (7<<0)
BankSize16M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3373	#define BankSize16M             (0<<0)
BankSize8M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3412	#define BankSize8M              (4<<0)
BankSize4M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3451	#define BankSize4M              (5<<0)
BankSize2M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3490	#define BankSize2M              (6<<0)
BankSize1M	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3529	#define BankSize1M              (7<<0)
StandardReadProtocol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3594	#define StandardReadProtocol    (0<<4)
EarlyReadProtocol	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3633	#define EarlyReadProtocol       (1<<4)
DRP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3672	#define DRP                     (1<<4)
RCB	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	3800	#define RCB                     (1<<0)
EBI_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\ebi.h	4027	#define EBI_BASE            ((StructEBI *) 0xFFE00000)
eb01_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	985	#define eb01_h
FLASH_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1173	#define FLASH_BASE      ((u_int *)0x01000000)
SRAM_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1286	#define SRAM_BASE       ((u_int *)0x02000000)
LED1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1459	#define LED1        P1
LED2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1498	#define LED2        P4
LED3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1537	#define LED3        P2
IRQ_SW3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1583	#define IRQ_SW3     FIQ
PIN_SW3	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1607	#define PIN_SW3     P12
PIN_SW4	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1654	#define PIN_SW4     P5
IRQ_SW5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1700	#define IRQ_SW5     IRQ0
PIN_SW5	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1725	#define PIN_SW5     P9
MCK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1807	#define MCK         32768000
MCKMHz	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\eb01.h	1836	#define MCKMHz      (MCK/1000000)
db01_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	986	#define db01_h
SSRAM_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1180	#define SSRAM_BASE          INT_ROM_BASE
SSRAM_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1221	#define SSRAM_SIZE          (256*1024*4)
SSRAM_LIMIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1262	#define SSRAM_LIMIT         ((u_int *)(((u_int)SSRAM_BASE) + SSRAM_SIZE))
BOOT_ROM_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1387	#define BOOT_ROM_BASE       ((u_int *) 0x01000000)
BOOT_ROM_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1438	#define BOOT_ROM_SIZE       (32*1024)
BOOT_ROM_LIMIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1476	#define BOOT_ROM_LIMIT      ((u_int *)(((u_int)BOOT_ROM_BASE) + BOOT_ROM_SIZE))
FLASH_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1598	#define FLASH_BASE          ((u_int *)0x02000000)
FLASH_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1648	#define FLASH_SIZE          (2*128*1024)
FLASH_LIMIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1689	#define FLASH_LIMIT         ((u_int *)(((u_int)FLASH_BASE) + FLASH_SIZE))
LED1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1893	#define LED1        P4
LED2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1916	#define LED2        P1
IRQ_SW1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1962	#define IRQ_SW1     IRQ0
PIN_SW1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\db01.h	1987	#define PIN_SW1     P9
arm_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	970	#define arm_h
ARM_MODE_USER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1077	#define     ARM_MODE_USER       0x10
ARM_MODE_FIQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1114	#define     ARM_MODE_FIQ        0x11
ARM_MODE_IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1151	#define     ARM_MODE_IRQ        0x12
ARM_MODE_SVC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1188	#define     ARM_MODE_SVC        0x13
ARM_MODE_ABORT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1225	#define     ARM_MODE_ABORT      0x17
ARM_MODE_UNDEF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1262	#define     ARM_MODE_UNDEF      0x1B
ARM_MODE_SYS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1299	#define     ARM_MODE_SYS        0x1F
I_BIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1337	#define     I_BIT               0x80
F_BIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1374	#define     F_BIT               0x40
T_BIT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\arm.h	1411	#define     T_BIT               0x20
aic_h	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	988	#define aic_h
AIC_SMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1177	    at91_reg        AIC_SMR[32] ;       /* Source Mode Register */
AIC_SVR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1244	    at91_reg        AIC_SVR[32] ;       /* Source Vector Register */
AIC_IVR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1313	    at91_reg        AIC_IVR ;           /* Interrupt Vector Register */
AIC_FVR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1385	    at91_reg        AIC_FVR ;           /* FIQ Vector Register */
AIC_ISR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1451	    at91_reg        AIC_ISR ;           /* Interrupt Status Register */
AIC_IPR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1523	    at91_reg        AIC_IPR ;           /* Interrupt Pending Register */
AIC_IMR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1596	    at91_reg        AIC_IMR ;           /* Interrupt Mask Register */
AIC_CISR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1666	    at91_reg        AIC_CISR ;          /* Core Interrupt Status Register */
reserved0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1743	    at91_reg        reserved0 ;
reserved1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1775	    at91_reg        reserved1 ;
AIC_IECR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1807	    at91_reg        AIC_IECR ;          /* Interrupt Enable Command Register */
AIC_IDCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1887	    at91_reg        AIC_IDCR ;          /* Interrupt Disable Command Register */
AIC_ICCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	1968	    at91_reg        AIC_ICCR ;          /* Interrupt Clear Command Register */
AIC_ISCR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2047	    at91_reg        AIC_ISCR ;          /* Interrupt Set Command Register */
AIC_EOICR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2124	    at91_reg        AIC_EOICR ;         /* End of Interrupt Command Register */
StructAIC	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2186	} StructAIC ;
LevelSensitive	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2351	#define LevelSensitive              (0<<5)
EdgeTriggered	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2394	#define EdgeTriggered               (1<<5)
LowLevel	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2437	#define LowLevel                    (0<<5)
NegativeEdge	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2480	#define NegativeEdge                (1<<5)
HighLevel	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2523	#define HighLevel                   (2<<5)
PositiveEdge	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2566	#define PositiveEdge                (3<<5)
SRCTYPE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2610	#define SRCTYPE                     (3<<5)
PRIOR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2653	#define PRIOR                       (7<<0)
IRQID	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2793	#define IRQID                       0x1F
NFIQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2946	#define NFIQ                        (1<<0)
NIRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	2989	#define NIRQ                        (1<<1)
TypeAICHandler	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3173	typedef void (*TypeAICHandler) (void) ;
AIC_BASE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3395	#define AIC_BASE            ((StructAIC *) 0xFFFFF000 )
FIQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3507	#define FIQ             0
SWIRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3533	#define SWIRQ           1
US0IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3559	#define US0IRQ          2
US1IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3585	#define US1IRQ          3
TC0IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3611	#define TC0IRQ          4
TC1IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3637	#define TC1IRQ          5
TC2IRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3663	#define TC2IRQ          6
WDIRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3690	#define WDIRQ           7
PIOIRQ	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3716	#define PIOIRQ          8
IRQ0	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3743	#define IRQ0            16
IRQ1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3770	#define IRQ1            17
IRQ2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3797	#define IRQ2            18
NB_INTERRUPT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\include\aic.h	3885	#define NB_INTERRUPT    18
QPDEF_H__E7C77DE3_4F4F_4AA3_8AEA_AC20D6F170F9__INCLUDED_	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	1272	#define QPDEF_H__E7C77DE3_4F4F_4AA3_8AEA_AC20D6F170F9__INCLUDED_
true	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2480	#define true 1         //on arm
false	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2512	#define false 0         
arm_86_char	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2537	#define arm_86_char char         //8086 chars are signed, arm are unsigned
arm_86_short	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2612	#define arm_86_short short   __attribute__((aligned(2)))       
arm_86_ushort	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2676	#define arm_86_ushort unsigned short  __attribute__((aligned(2)))        
arm_86_int	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2750	#define arm_86_int int    __attribute__((aligned(4)))       
arm_86_uint	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2811	#define arm_86_uint unsigned int  __attribute__((aligned(4)))         
arm_86_float	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2882	#define arm_86_float float   __attribute__((aligned(4)))        
arm_86_ulong64	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	2947	#define arm_86_ulong64 unsigned long long  __attribute__((aligned(4)))
pack_tight	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3018	#define pack_tight __attribute__ ((packed)) 
bytesize	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3063	#define bytesize sizeof         //sizeof struct in arm rounds up to mult of 4 bytes! this sucks
arm_86_char	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3311	#define arm_86_char unsigned char    //on x86     
arm_86_short	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3362	#define arm_86_short __int16
arm_86_ushort	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3391	#define arm_86_ushort unsigned __int16         
arm_86_int	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3439	#define arm_86_int __int32          
arm_86_uint	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3476	#define arm_86_uint unsigned __int32          
arm_86_float	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3523	#define arm_86_float float
arm_86_ulong64	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3550	#define arm_86_ulong64 unsigned __int64 
pack_tight	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3591	#define pack_tight          
MAX_MASS_TABLE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	3942	#define MAX_MASS_TABLE 15                                          // REQ #251
autozero_off	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4029	enum autozero {autozero_off,autozero_per_sample,autozero_per_scan} ;
autozero_per_sample	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4042	enum autozero {autozero_off,autozero_per_sample,autozero_per_scan} ;
autozero_per_scan	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4062	enum autozero {autozero_off,autozero_per_sample,autozero_per_scan} ;
autozero	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4019	enum autozero {autozero_off,autozero_per_sample,autozero_per_scan} ;
GND	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4327	    arm_86_int GND;
REF	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4347	    arm_86_int REF;
SR2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4369	    arm_86_float SR2;
SR1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4391	    arm_86_float SR1;
RFAMPL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4413	    arm_86_float RFAMPL;
PIRTEMP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4438	    arm_86_float PIRTEMP;
PIRCORR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4464	    arm_86_float PIRCORR;
PIRPRES	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4490	    arm_86_float PIRPRES;
DEGASCUR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4516	    arm_86_float DEGASCUR;
DCPLUS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4543	    arm_86_float DCPLUS;
FOCUS2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4568	    arm_86_float FOCUS2;
DCMINUS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4593	    arm_86_float DCMINUS;
INTTEMP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4619	    arm_86_float INTTEMP;
FOCUS1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4645	    arm_86_float FOCUS1;
FILV	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4670	    arm_86_float FILV;
PSVOLTS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4693	    arm_86_float PSVOLTS;
TOTAL	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4719	    arm_86_float TOTAL;
FIL_CURRENT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4743	    arm_86_float FIL_CURRENT;
pwm	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4806	    arm_86_ushort pwm;
FIL_DAC_COARSE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4829	    arm_86_ushort FIL_DAC_COARSE;
FIL_DAC_FINE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4863	    arm_86_ushort FIL_DAC_FINE;
SERIAL_NUMBER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4895	    arm_86_ushort SERIAL_NUMBER;                                    // REQ #217
MODEL_NUMBER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	4975	    arm_86_ushort MODEL_NUMBER;                                     // REQ #217
TToHost	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5053	   } pack_tight TToHost;
flt	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5298	    arm_86_float flt;
i	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5319	    arm_86_uint i;
Tcurrent	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5324	} Tcurrent;
leader	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5632	        arm_86_ulong64 leader;                  //leader defined in qpdef.h
count	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5705	        arm_86_uint count;                      //total number of bytes in packet incl. leader and checksum
ser_num	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5813	        arm_86_uint ser_num;                    //in case a packet is missed
command	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5890	        arm_86_uint command;                    //16 bit command
param1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	5955	        arm_86_uint param1;                     //used for some commands
param2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6028	        arm_86_uint param2;                     //used for some commands
data_plus_checksum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6101	        arm_86_char data_plus_checksum[MAX_PACKET_DATA_SIZE+4];         //actual data and checksum
Tpacket	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6191	} Tpacket;
MIN_PACKET_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6209	#define MIN_PACKET_SIZE (sizeof(Tpacket) - MAX_PACKET_DATA_SIZE)
leader	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6618	        arm_86_ulong64 leader;                  
count	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6664	        arm_86_uint count;                      //total number of bytes in packet incl. leader and checksum
ser_num	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6772	        arm_86_uint ser_num;                    //in case a packet is missed
command	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6849	        arm_86_uint command;                    //16 bit command
param1	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6914	        arm_86_uint param1;                     //used for some commands
param2	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	6987	        arm_86_uint param2;                     //used for some commands
data	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7062	        arm_86_char * data;                     //points to data, sender and receiver must compute checksum
Tpacket_header	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7167	} Tpacket_header;
num_to_average	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7424	        int     num_to_average;
rf_settle_ticks	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7456	        int     rf_settle_ticks;                
conversion_ticks	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7505	        int     conversion_ticks;               //rf+conversion+6 = total ticks 6 for sw settle+group delay
samples_per_second	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7611	        float samples_per_second;
Tticks	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7632	}Tticks;
tick_table	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	7985	const Tticks tick_table[18] =           
none	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	9995	enum commands {none,
start	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10016	               start,                 //to EC, start the main prog after download, 
ack	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10100	               ack,                   //return from EC
nack	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10155	               nack,                  //return from EC
kill	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10210	               kill,                  //to EC, stop dead, goes into reset mode, returning 0xac every 2 sec.
write_arm_mem	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10318	               write_arm_mem,         // param1:start address, data follows header (computes count from packet.count)
set_baudrate	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10436	               set_baudrate,          //param1 has (SYSTEM_CLOCK / (16 * NEW_BAUD_RATE)) 
attach_filament_status	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10526	               attach_filament_status,//ec internal
send_short_packet	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10578	               send_short_packet,     //ec internal commands from none up to send_short_packet are usable until full firmware is loaded
read_arm_mem	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10796	               read_arm_mem,          //param1 has address, param2 has count ;return ack with data
load_operating_params	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10895	               load_operating_params, // send ec struct FromHost
load_scanning_params	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	10960	               load_scanning_params,  // send ec struct  
get_operating_status	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11018	               get_operating_status,  //ec returns struct ToHost
start_sweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11083	               start_sweep,
stop_sweep	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11111	               stop_sweep,
read_sweep_data	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11138	               read_sweep_data,       //param1 has index, param2 has count ;return ack with data
read_firmware_checksum	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11235	               read_firmware_checksum,//param1 has last address, param2 has checksum, will stop sweep also
commands	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	9985	enum commands {none,
MODE_MASS_SWEEP	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11545	enum Tmode {MODE_MASS_SWEEP,                                        // REQ #238
MODE_MASS_SWEEP_BAR	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11625	            MODE_MASS_SWEEP_BAR,                                    // REQ #238
MODE_MASS_TABLE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11705	            MODE_MASS_TABLE,                                        // REQ #238
MODE_TREND	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11785	            MODE_TREND,                                             // REQ #238
MODE_DEGAS	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11865	            MODE_DEGAS,                                             // REQ #238
MODE_LEAK_DETECT	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11945	            MODE_LEAK_DETECT,                                       // REQ #238
MODE_CALIBRATION	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	12025	            MODE_CALIBRATION                                        // REQ #238
Tmode	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpdef.h	11538	enum Tmode {MODE_MASS_SWEEP,                                        // REQ #238
QPCONSTANTS_H__E7C77DE3_4F4F_4AA3_8AEA_AC20D6F170F9__INCLUDED_	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	631	#define QPCONSTANTS_H__E7C77DE3_4F4F_4AA3_8AEA_AC20D6F170F9__INCLUDED_
CALIBRATION_SAMPLES_PER_SECOND	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1027	#define CALIBRATION_SAMPLES_PER_SECOND   (10)                       // REQ #240
ARM_MEM_BOOT_PACKET_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1107	#define ARM_MEM_BOOT_PACKET_SIZE        0xA00   //boot packet(.data size), must recompile and load boot if changed
ARM_MEM_SIZE_DOWNLOAD	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1222	#define ARM_MEM_SIZE_DOWNLOAD          0x6000   //must recompile and load boot if changed // REQ #204
BOOT_BAUD_RATE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1324	#define BOOT_BAUD_RATE                   9600
SYSTEM_CLOCK	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1370	#define SYSTEM_CLOCK                 55296000 // 55,296,000
MAX_PACKET_DATA_SIZE	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1430	#define MAX_PACKET_DATA_SIZE             1500 //actual packet is a little bigger with header,count etc.,
LEADER	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1535	#define LEADER                     "EXTORRV1"
TenMinutes	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1581	#define TenMinutes (int)(10.0 * 60.0 / 27.777e-6) //number of adsync ticks // REQ #364
ThirtySeconds	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1668	#define ThirtySeconds (int)(10.0  / 27.777e-6) //number of adsync ticks    // REQ #364
DEGAS_DURATION	c:\entiredepot\clients\Extorr\VacuumPlus\qpbox\qpconstants.h	1755	#define DEGAS_DURATION TenMinutes                                          // REQ #364
