subroutine load_baseline_realist()
  
  %baseline_dgt = ".\..\..\data\calibrations\Baseline_DGT.xls"
  
  vector(1) vectnb_dgt

  vectnb_dgt.read(a1,s=BaselineRealist) {%baseline_dgt} 1
  !exo_baseline_realistic=vectnb_dgt(1)
  read(c2,s=BaselineRealist,t) {%baseline_dgt} !exo_baseline_realistic

endsub