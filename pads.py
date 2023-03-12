# 
# Digital VLSI Lab 2022
# Marios Pakas
# 
# This python script is used to generate all pads suitable for picorv32, apart from VSS and VDD pads
# 

single_pad_names = ['clk', 'resetn', 'trap', 'mem_ready', 'pcpi_wr', 'pcpi_wait', 'pcpi_ready', 'mem_valid', 'mem_instr', 'mem_la_read', 'mem_la_write', 'pcpi_valid', 'trace_valid']

for i in range(len(single_pad_names)):
    print("PADDB pad_" + str(single_pad_names[i]) + "(.Y(" + str(single_pad_names[i]) + "), .VDD(VDD), .VSS(VSS));")

pad_names_32 = ['mem_rdata', 'pcpi_rd', 'irq', 'mem_addr', 'mem_wdata', 'mem_la_addr', 'mem_la_wdata', 'pcpi_insn', 'pcpi_rs1', 'pcpi_rs2', 'eoi']

for i in range(len(pad_names_32)):
    for j in range(32):
        print("PADDB pad_" + str(pad_names_32[i]) + str(j) + "(.Y(" + str(pad_names_32[i]) + "[" + str(j) + "]), .VDD(VDD), .VSS(VSS));")

pad_names_4 = ['mem_wstrb', 'mem_la_wstrb']

for i in range(len(pad_names_4)):
    for j in range(4):
        print("PADDB pad_" + str(pad_names_4[i]) + str(j) + "(.Y(" + str(pad_names_4[i]) + "[" + str(j) + "]), .VDD(VDD), .VSS(VSS));")

pad_names_36 = ['trace_data']

for i in range(len(pad_names_36)):
    for j in range(36):
        print("PADDB pad_" + str(pad_names_36[i]) + str(j) + "(.Y(" + str(pad_names_36[i]) + "[" + str(j) + "]), .VDD(VDD), .VSS(VSS));")