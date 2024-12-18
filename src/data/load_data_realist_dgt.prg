subroutine load_realist_dgt()
  
  %baseline_dgt = ".\..\..\data\calibrations\Baseline_DGT.xls"
  
  vector(1) vectnb_dgt_bis

  vectnb_dgt_bis.read(a1,s=exo_realistic_1) {%baseline_dgt} 1
  !exo_realistic=vectnb_dgt_bis(1)
  read(c2,s=exo_realistic_1,t) {%baseline_dgt} !exo_realistic


 vectnb_dgt_bis.read(a1,s=exo_realistic_Hybrid) {%baseline_dgt} 1
 !exo_realistic=vectnb_dgt_bis(1)
 read(c2,s=exo_realistic_Hybrid,t) {%baseline_dgt} !exo_realistic

 
endsub