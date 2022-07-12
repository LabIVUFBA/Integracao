# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force c:/LABIV/Integracao/Quartus/software/IntegracaoNios/mem_init/hdl_sim/IntegracaoPlatformDesigner_onchip_memory.dat ./ 
file copy -force c:/LABIV/Integracao/Quartus/software/IntegracaoNios/mem_init/IntegracaoPlatformDesigner_onchip_memory.hex ./ 
