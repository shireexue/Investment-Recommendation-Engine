/* Download stock price data from Yahoo Finance */
%macro getdata(tic) ;
FILENAME myurl URL "http://ichart.finance.yahoo.com/table.csv?s=&tic";
DATA &tic ;
INFILE myurl FIRSTOBS=2 missover dsd;
format date yymmdd10.;
INPUT  Date: yymmdd10. Open    High Low Close    Volume  &tic;
drop Open;
drop high;
drop low;
drop close;
drop volume;
RUN;
Proc sort data=&tic; BY date;
run;
%mend;

%getdata(AAPL);
%getdata(XOM);
%getdata(MSFT);
%getdata(JNJ);
%getdata(AA);
%getdata(WFC);
%getdata(GE);
%getdata(JPM);
%getdata(PG);
%getdata(PFE);
%getdata(VZ);
%getdata(CVX);
%getdata(T);
%getdata(FB);
%getdata(BAC);
%getdata(KO);
%getdata(DIS);
%getdata(INTC);
%getdata(MRK);
%getdata(GOOGL);
%getdata(C);
%getdata(CMCSA);
%getdata(GILD);
%getdata(CSCO);
%getdata(HD);
%getdata(IBM);
%getdata(AMZN);
%getdata(PEP);
%getdata(ORCL);
%getdata(V);
%getdata(WMT);
%getdata(PM);
%getdata(AMGN);
%getdata(CVS);
%getdata(QCOM);
%getdata(MDT);
%getdata(MO);
%getdata(BMY);
%getdata(SLB);
%getdata(UNH);
%getdata(MMM);
%getdata(UNP);
%getdata(BA);
%getdata(UTX);
%getdata(BIIB);
%getdata(ABBV);
%getdata(MCD);
%getdata(CELG);
%getdata(MA);
%getdata(COP);
%getdata(HON);
%getdata(USB);
%getdata(ACT);
%getdata(AIG);
%getdata(GS);
%getdata(AXP);
%getdata(CBS);
%getdata(WBA);
%getdata(ABT);
%getdata(AGN);
%getdata(DD);
%getdata(TWX);
%getdata(UPS);
%getdata(LLY);
%getdata(KMI);
%getdata(NKE);
%getdata(SBUX);
%getdata(COST);
%getdata(FOXA);
%getdata(EBAY);
%getdata(ESRX);
%getdata(HPQ);
%getdata(PCLN);
%getdata(F);
%getdata(MDLZ);
%getdata(OXY);
%getdata(TXN);
%getdata(CL);
%getdata(AVY);
%getdata(EMC);
%getdata(MET);
%getdata(MON);
%getdata(SPG);
%getdata(DOW);
%getdata(DUK);
%getdata(LMT);
%getdata(MS);
%getdata(DHR);
%getdata(MCK);
%getdata(TMO);
%getdata(CAT);
%getdata(EOG);
%getdata(GM);
%getdata(TGT);
%getdata(PNC);
%getdata(FDX);
%getdata(TJX);
%getdata(BK);
%getdata(DTV);
%getdata(NEE);
%getdata(TWC);
%getdata(APC);
%getdata(COF);
%getdata(GD);
%getdata(PSX);
%getdata(AMT);
%getdata(ADP);
%getdata(D);
%getdata(EMR);
%getdata(KMB);
%getdata(SO);
%getdata(ANTM);
%getdata(YHOO);
%getdata(ACE);
%getdata(ADBE);
%getdata(BAX);
%getdata(CTSH);
%getdata(DAL);
%getdata(HAL);
%getdata(KRFT);
%getdata(LYB);
%getdata(PX);
%getdata(PRU);
%getdata(CRM);
%getdata(AET);
%getdata(ALXN);
%getdata(ITW);
%getdata(TRV);
%getdata(YUM);
%getdata(CSX);
%getdata(SCHW);
%getdata(ETN);
%getdata(JCI);
%getdata(KR);
%getdata(NSC);
%getdata(NOC);
%getdata(RTN);
%getdata(WMB);
%getdata(AVGO);
%getdata(CI);
%getdata(GLW);
%getdata(DE);
%getdata(ECL);
%getdata(GIS);
%getdata(MU);
%getdata(PPG);
%getdata(STT);
%getdata(VLO);
%getdata(IWM);
%getdata(IWR);
%getdata(EEM);
%getdata(EFA);
%getdata(EWZ);
%getdata(EWJ);
%getdata(FXI);
%getdata(RSX);
%getdata(EWG);
%getdata(EPI);
%getdata(EWU);
%getdata(VEA);
%getdata(VGK);
%getdata(EWH);
%getdata(EWY);
%getdata(EWW);
%getdata(EWI);
%getdata(EWC);
%getdata(EWP);
%getdata(EWQ);
%getdata(EWD);
%getdata(EWK);
%getdata(EWA);
%getdata(EWL);
%getdata(EWM);
%getdata(EWN);
%getdata(GREK);
%getdata(TLT);
%getdata(EMB);
%getdata(IGOV);
%getdata(ISHG);
%getdata(DSUM);
%getdata(PCY);
%getdata(PICB);
%getdata(BWX);
%getdata(BWZ);
%getdata(TLO);
%getdata(IBND);
%getdata(EMLC);
%getdata(ALD);
%getdata(ELD);
%getdata(JNK);
%getdata(BND);
%getdata(BKLN);
%getdata(ACG);
%getdata(LWC);
%getdata(EBND);
%getdata(ITR);
%getdata(ADRE);
%getdata(EMHY);
%getdata(SCHE);
%getdata(JGBD);

/* Combine all stocks dataset into one*/
data combined ;
merge AAPL	XOM	MSFT	JNJ	AA	WFC	GE	JPM	PG	PFE	VZ	CVX	T	FB	BAC	KO	DIS	INTC	MRK	GOOGL	C	CMCSA	GILD	CSCO	HD	IBM	AMZN	PEP	ORCL	V	WMT	PM	AMGN	CVS	QCOM	MDT	MO	BMY	SLB	UNH	MMM	UNP	BA	UTX	BIIB	ABBV	MCD	CELG	MA	COP	HON	USB	ACT	AIG	GS	AXP	CBS	WBA	ABT	AGN	DD	TWX	UPS	LLY	KMI	NKE	SBUX	COST	FOXA	EBAY	ESRX	HPQ	PCLN	F	MDLZ	OXY	TXN	CL	AVY	EMC	MET	MON	SPG	DOW	DUK	LMT	MS	DHR	MCK	TMO	CAT	EOG	GM	TGT	PNC	FDX	TJX	BK	DTV	NEE	TWC	APC	COF	GD	PSX	AMT	ADP	D	EMR	KMB	SO	ANTM	YHOO	ACE	ADBE	BAX	CTSH	DAL	HAL	KRFT	LYB	PX	PRU	CRM	AET	ALXN	ITW	TRV	YUM	CSX	SCHW	ETN	JCI	KR	NSC	NOC	RTN	WMB	AVGO	CI	GLW	DE	ECL	GIS	MU	PPG	STT	VLO	IWM	IWR	EEM	EFA	EWZ	EWJ	FXI	RSX	EWG	EPI	EWU	VEA	VGK	EWH	EWY	EWW	EWI	EWC	EWP	EWQ	EWD	EWK	EWA	EWL	EWM	EWN	GREK	TLT	EMB	IGOV	ISHG	DSUM	PCY	PICB	BWX	BWZ	TLO	IBND	EMLC	ALD	ELD	JNK	BND	BKLN	ACG	LWC	EBND	ITR	ADRE	EMHY	SCHE	JGBD;
by Date;
run;


/* calculate daily return rate */
data DailyRate;
   set combined;
   drop i;
   array assets aapl--JGBD;
   do i= 1 to dim(assets);
     assets[i] = (assets[i] - lag(assets[i]))/ lag(assets[i]);
   end;
run;

/* Sort the rate by Date so newest data in the front*/
Proc sort data=DailyRate; BY descending date; run;

/* Select only the past five years' data */
data analysis ;
   set DailyRate(obs=1260);
   drop date;
run;

/*calculate mean return and covariance */
proc corr data=analysis noprob outp=OutCorr /** store results **/
          cov;   /**  include covariances **/
var _all_;
run;

proc print data=outcorr;
run;

/* Extract the mean return for each stock */
Data meanR(drop= _name_); set outcorr;
Where _TYPE_ = "MEAN";
Drop _Type_;
run;


/* Transpose the return table so we can import it in the model easily */
Proc transpose data=meanR out=Return(drop=_label_) name=assets prefix=return;
var _all_;
run;
proc print data=Return;
run;


/* Extract covariance matrix */
Data cov;set outcorr;
If _TYPE_ ne 'COV' then delete;
drop _Type_;
run;


/* EFFICIENT Frontier with Looping */
Title "Efficient frontier Looping";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};
num lambda;

/* Read Data from previous tables into the model */
Read data Return into Assets=[Assets] Return1;  /* read return rate for each assets */

Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0 <=1;  

Max k=lamb  da*(sum{j in Assets}Return1[j]*x[j]*252)-(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

con con: sum{i in assets}x[i]=1; /* full investment */

/* Create empty set to store value */

num totalreturn2{1..50};
num totalrisk2{1..50};
num totalreturn{1..50};
num totalrisk{1..50};
num iters;

lamda=0;
iters=0;

/* Run the loop for 50 times to get 50 combinations of return and risk*/
do iters=1 to 50 by 1 until (lamda>=1);
lamda=lamda+0.02 ;


solve with nlpc/tech=quanew;
/* Save return and risk values into sets */
for {m in 1..50} do;totalreturn[m]=(sum{j in Assets}Return1[j]*x[j]*252);end;
for {n in 1..50} do;totalrisk[n]=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);end;
for {j in 1..50} do;totalreturn2[iters]=totalreturn[j];end;
for {k in 1..50} do;totalrisk2[iters]=totalrisk[k];end;


end;
create data ef from [i]=(1..50) totalreturn2[i] totalrisk2[i];
print totalreturn2;
print totalrisk2;
quit;

proc print data=ef;
run;

/* Plot Efficient Frontier */
Title "Efficient Frontier graph";
Proc gplot data=ef;
plot totalreturn2*totalrisk2 /haxis=0 to 0.3 by 0.03
                              vaxis=0 to 0.5 by 0.1;
run;
quit;



/* Sharpe's ratio with No constraints */
title "Shapre's no constraint";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

/* Objective function= Sharpe's ratio */	                    
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

solve with nlp; 

/*Print Return and Risk */
num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;
 
print x.sol;

quit;


/* Sharpe's Ratio*/
/* Age group 18-27 */
/* Domestic Stocks - 75%, International stocks - 15% , Bonds -10% */
title "Age group 18-27";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};

/*domestic stocks*/
num indicator1{assets}=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/*International ETF*/
num indicator2{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/* Bonds */
num indicator3{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

/* Objective function= Sharp's ratio */	   
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

	/* Assets allocation limit */
con      DomesticStocks: sum{i in Assets}indicator1[i]*x[i] =0.75;
con       International: sum{i in Assets}indicator2[i]*x[i] =0.15;
con               Bonds: sum{i in Assets}indicator3[i]*x[i] =0.1;


solve with nlpc/tech=quanew;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;

print x.sol;

quit;

/* Flexible Allocation Risk=0.1168 */
title "Same risk no constraints on proportion - risk=0.1168";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  
var risk >=0;

/* Objective function= Sharpe's ratio */
	                    
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

    /* Constraint risk level*/
con risk=(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));
con risk=0.1168;

solve with nlp;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;
print risk;

print x.sol;

quit;



/* Sharpe's Ratio*/
/* Age group 28-45 */
/* Domestic Stocks - 55%, International stocks - 10% , Bonds -35% */
title "Age group 28-45";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};
/*domestic stocks*/
num indicator1{assets}=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/*International ETF*/
num indicator2{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/* Bonds */
num indicator3{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

	/* Assets allocation limit */
con      DomesticStocks: sum{i in Assets}indicator1[i]*x[i]=0.55 ;
con      International:  sum{i in Assets}indicator2[i]*x[i]=0.1 ;
con      Bonds:          sum{i in Assets}indicator3[i]*x[i]=0.35 ;

solve with nlpc/tech=quanew;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;

print x.sol;

quit;



/* Flexible Allocation risk=0.078029*/
title "Same risk no constraint on proportion - risk=0.078029";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

/* Objective function= Sharpe's ratio */
	                    
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

    /*Risk=0.078029*/
con con2:sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252)=0.078029;

solve with nlp;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;

print x.sol;
quit;


/* Sharpe's Ratio*/
/* Age group 45+ */
/* Domestic Stocks - 45%, International stocks - 5% , Bonds -50% */
title "Age group 45+";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};
/*domestic stocks*/
num indicator1{assets}=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/*International ETF*/
num indicator2{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/* Bonds */
num indicator3{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

/* Objective function= Sharp's ratio */
	                    
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

	/* Assets proportion */
con      DomesticStocks: sum{i in Assets}indicator1[i]*x[i]=0.45 ;
con       International: sum{i in Assets}indicator2[i]*x[i]=0.05;
con               Bonds: sum{i in Assets}indicator3[i]*x[i]=0.5 ;

    /*Calculate actual return in $ for print out purpose*/


solve with nlpc/tech=quanew;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;
print x.sol;
quit;


/* Flexible Allocation risk=0.06335 */
title "Same risk no constraint on proportion -risk=0.06335";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  
var risk >=0;

/* Objective function= Sharp's ratio */	                    
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

    /*Calculate actual return in $ for print out purpose*/
con risk=0.06335;
con risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);

solve with nlp;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;
print risk;

print x.sol;

quit;



title "sensitivity analysis 18-27";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};

/*domestic stocks*/
num indicator1{assets}=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/*International ETF*/
num indicator2{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/* Bonds */
num indicator3{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

/* Objective function= Sharp's ratio= (average return-risk free rate)/risk */	   
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;


	/* Increase risk level by 0.03 */
con      sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252)=0.1468;

solve;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;

print x.sol;

quit;

title "Sensitivity Analysis 28-45";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};
/*domestic stocks*/
num indicator1{assets}=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/*International ETF*/
num indicator2{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/* Bonds */
num indicator3{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;


	/* Increase risk level by 0.03 */
con      Sensitivity: sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252)=0.108;

solve;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;

print x.sol;

quit;



title "Sensitivity Analysis 45+";
proc optmodel;

set <str> Assets;

num Return1{Assets};
num Covariance{assets,assets};
/*domestic stocks*/
num indicator1{assets}=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/*International ETF*/
num indicator2{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0];
/* Bonds */
num indicator3{assets}=[0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];

/* Read Data from previous tables into the model */
Read data return into Assets=[Assets] Return1;  /* read return rate for each assets */
Read data cov into [_Name_] {j in Assets} <Covariance[_Name_,j]=col(j)>;  /* read covariance matrix */

var x{assets} >=0;  

/* Objective function= Sharp's ratio */
	                    
Maximize r=(sum{p in Assets}Return1[p]*252*x[p] - 0.0025)/(sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252));

    /* all weights sum up to 1*/
con con1: sum{i in assets}x[i]=1;

	/*increase risk level by 0.03 */
con   sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252)=0.0933;

solve;

num return;
return=sum{j in Assets}Return1[j]*x[j]*252;
print return;

num risk;
risk=sqrt(sum{i in Assets, j in Assets}covariance[i,j]*x[i]*x[j])*sqrt(252);
print risk;
print x.sol;
quit;


