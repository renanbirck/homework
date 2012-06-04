function plot_everything(bits)

    plot_bitstream(bits,'Bitstream')
    print(gcf,'-dpng','bits.png')
    
    plot_bitstream(NRZ(bits),'NRZ')
    print(gcf,'-dpng','NRZ.png')
    
    plot_bitstream(NRZI(bits),'NRZI')
    print(gcf,'-dpng','NRZI.png')
    
    plot_bitstream(AMI(bits),'AMI')
    print(gcf,'-dpng','AMI.png')
    
    plot_bitstream(B8ZS(bits),'B8ZS')
    print(gcf,'-dpng','B8ZS.png')
    
    plot_bitstream(HDB3(bits),'HDB3')
    print(gcf,'-dpng','HDB3.png')
    
    plot_bitstream(pseudoternary(bits),'Pseudoternária')
    print(gcf,'-dpng','pseudoternary.png')
        
    plot_bitstream(Manchester(bits),'Manchester')
    print(gcf,'-dpng','Manchester.png')
    
    plot_bitstream(Manchester_Diferencial(bits),'Manchester Diferencial')
    print(gcf,'-dpng','Manchester_Diferencial.png')
    
    
end