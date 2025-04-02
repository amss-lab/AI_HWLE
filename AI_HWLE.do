clear all
set more off
cd "xx"
use XX\Data.dta , clear

************************
************************
********Table 1 ********
************************
************************
*******HLE**************
global X ln_pm25 indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
//FE
xi: xtreg ln_total_hle ln_robot $X , fe r
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") replace
//reduced form
xi: xtreg ln_total_hle ln_IV $X , fe r
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 
//2SLS
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X ,fe r first
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 

*******WLE**************
global X ln_pm25 ln_perhc indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
//FE
xi: xtreg ln_total_wle ln_robot $X , fe r
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 
//reduced form
xi: xtreg ln_total_wle ln_IV $X , fe r
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 
//2SLS
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X ,fe r first
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 

*******HWLE**************
//FE
xi: xtreg ln_total_hwle ln_robot $X , fe r
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 
//reduced form
xi: xtreg ln_total_hwle ln_IV $X , fe r
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 
//2SLS
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X ,fe r first
outreg2 using Table 1.doc,dec(3) title("Benchmark regression results") 

************************
************************
******* Table 2  *******
************************
************************
//Panel A. Heterogeneous impacts across artificial intelligence application industries

//HLE
global X ln_pm25 indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_total_hle (ln_IndA_B = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") replace
xi:xtivreg2 ln_total_hle (ln_IndC = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hle (ln_IndD = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hle (ln_IndE = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hle (ln_IndF = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hle (ln_IndP = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 

//WLE
global X ln_pm25 ln_perhc indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_total_wle (ln_IndA_B = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_wle (ln_IndC = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_wle (ln_IndD = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_wle (ln_IndE = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_wle (ln_IndF = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_wle (ln_IndP = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 

//HWLE
xi:xtivreg2 ln_total_hwle (ln_IndA_B = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hwle (ln_IndC = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hwle (ln_IndD = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hwle (ln_IndE = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hwle (ln_IndF = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 
xi:xtivreg2 ln_total_hwle (ln_IndP = ln_IV) $X ,fe r first
outreg2 using Table_2_Panel_A.doc,dec(3) title("Table Table_2_Panel_A") 

//Panel B. Heterogeneous impacts across regions

//HLE
global X ln_pm25 indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X if region == 1,fe r first 
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") replace
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X if region == 2,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X if region == 3,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 

//WLE
global X ln_pm25 ln_perhc indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X if region == 1,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X if region == 2,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X if region == 3,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 

//HWLE
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X if region == 1,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X if region == 2,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X if region == 3,fe r first
outreg2 using Table_2_Panel_B.doc,dec(3) title("Table Table_2_Panel_B") 

//Panel C. Heterogeneous impacts across different levels of artificial intelligence penetration
//HLE
global X ln_pm25 indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X if group == 1,fe r first 
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") replace
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X if group == 2,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 
xi:xtivreg2 ln_total_hle (ln_robot = ln_IV) $X if group == 3,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 

//WLE
global X ln_pm25 ln_perhc indstru popstru drank_ratio smoked_ratio drinking_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X if group == 1,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X if group == 2,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 
xi:xtivreg2 ln_total_wle (ln_robot = ln_IV) $X if group == 3,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 

//HWLE
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X if group == 1,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X if group == 2,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 
xi:xtivreg2 ln_total_hwle (ln_robot = ln_IV) $X if group == 3,fe r first
outreg2 using Table_2_Panel_C.doc,dec(3) title("Table Table_2_Panel_C") 


************************
************************
******Table 3  *********
************************
************************

//Panel A. Mechanism analysis through health channel
//Psychological burden
global X ln_pm25 ln_per_consum drank_ratio drinking_ratio smoked_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 ln_mental_cesd (ln_robot = ln_IV) $X ,fe r first 
outreg2 using Table_3_Panel_A.doc,dec(3) title("Table Table_3_Panel_A") replace
xi:xtivreg2 drinking_ratio (ln_robot = ln_IV) ln_pm25  ln_per_consum ln_median_age men_ratio ,fe r first 
outreg2 using Table_3_Panel_A.doc,dec(3) title("Table Table_3_Panel_A")
xi:xtivreg2 smoking_ratio (ln_robot = ln_IV) ln_pm25  ln_per_consum ln_median_age men_ratio ,fe r first 
outreg2 using Table_3_Panel_A.doc,dec(3) title("Table Table_3_Panel_A") 

//Physical burden
global X ln_pm25 ln_pergdp indstru popstru men_ratio 
xi:xtivreg2 work_related_illness_ratio (ln_robot = ln_IV) $X if year != 2011 ,fe r first 
outreg2 using Table_3_Panel_A.doc,dec(3) title("Table Table_3_Panel_A") replace
//Supplementary Table 10 Further mechanism analysis of the prevalence of different chronic diseases
forval i = 1/14 {
xi:xtivreg2 work_related_illness`i'_ratio (ln_robot = ln_IV) $X if year != 2011 ,fe r first 
outreg2 using Supplementary_Table_10.doc,dec(3) title("Supplementary_Table_10")
}



//Panel B. Mechanism analysis through work channel
global X ln_pm25 ln_per_consum drank_ratio drinking_ratio smoked_ratio smoking_ratio ln_median_age men_ratio
xi:xtivreg2 work_number (ln_robot = ln_IV) $X ,fe r first 
outreg2 using Table_3_Panel_B.doc,dec(3) title("Table Table_3_Panel_B") replace
xi:xtivreg2 work_automation (ln_robot = ln_IV) $X ,fe r first
outreg2 using Table_3_Panel_B.doc,dec(3) title("Table Table_3_Panel_B")
xi:xtivreg2 ln_work_efficiency (ln_robot = ln_IV) $X ,fe r first 
outreg2 using Table_3_Panel_B.doc,dec(3) title("Table Table_3_Panel_B")
xi:xtivreg2 ln_work_stable (ln_robot = ln_IV) $X ,fe r first 
outreg2 using Table_3_Panel_B.doc,dec(3) title("Table Table_3_Panel_B")

