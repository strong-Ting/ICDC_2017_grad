wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/DICS/M10912039/CIC/CIC_2017_grad/final/LEDDC_30fps.fsdb}
wvResizeWindow -win $_nWave1 0 23 1536 801
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 0 23 1536 801
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 195120.025588 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvResizeWindow -win $_nWave1 872 185 960 332
wvResizeWindow -win $_nWave1 1536 45 1344 777
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 316730.621975 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 440021.736569 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 457027.407548 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 573941.395525 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 705735.345609 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 201942.342870 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 325233.457464 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1103242.904732 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1256293.943539 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 967197.536904 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1113871.449093 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1232911.145943 -snap {("G1" 2)}
wvResizeWindow -win $_nWave1 110 93 960 332
wvResizeWindow -win $_nWave1 0 23 1536 801
wvSetCursor -win $_nWave1 190878.285901 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 332976.565405 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 466591.365536 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 598085.295823 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 718974.876894 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 841985.327808 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 979841.867625 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1111335.797912 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1238587.988513 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1378565.398174 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1495213.239558 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1611861.080941 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1766684.579506 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1874848.941516 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2014826.351177 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2156924.630681 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 201482.635118 -snap {("G1" 2)}
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 201482.635118 -snap {("G1" 2)}
wvSetSearchMode -win $_nWave1 -posedge
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 182394.806528 -snap {("G1" 2)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 1032 157 960 332
wvSetCursor -win $_nWave1 1866965.954233 -snap {("G1" 7)}
wvResizeWindow -win $_nWave1 1536 45 1344 777
wvSetCursor -win $_nWave1 2153405.852319 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 193439.507381 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 1782406.889436 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Hex
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 197690.925125 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 848157.840054 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Hex
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 213633.741668 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 327359.166337 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format Hex
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 445336.008750 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 332673.438517 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 447461.717622 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 455964.553112 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 720615.307715 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 49 48 960 332
wvResizeWindow -win $_nWave1 0 23 1536 801
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 924 266 960 332
wvResizeWindow -win $_nWave1 1536 45 1344 777
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2172474.467505 -snap {("G1" 3)}
wvSetSearchMode -win $_nWave1 -anyChange
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 212570.887231 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 335862.001826 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 454901.698675 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 590947.066503 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 327359.166336 -snap {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 325890.332201 -snap {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExpandBus -win $_nWave1 {("G1" 7)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4468240.049752 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 199816.634004 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 327359.166347 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExpandBus -win $_nWave1 {("G1" 7)}
wvSetCursor -win $_nWave1 463404.534180 -snap {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 2291514.164431 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/frame_buffer\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/frame_buffer\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvExpandBus -win $_nWave1 {("G1" 8)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 520 )} 
wvSelectSignal -win $_nWave1 {( "G1" 519 )} 
wvSetCursor -win $_nWave1 3335593577.494285 -snap {("G1" 520)}
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 13
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 13
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 49
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvExpandBus -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 536)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 520)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCollapseBus -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvExpandBus -win $_nWave1 {("G1" 8)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 \
           45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 \
           67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 \
           89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 \
           109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 \
           126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 \
           143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 \
           160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 \
           177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 \
           194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 \
           211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 \
           228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 \
           245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 \
           262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 \
           279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 \
           296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 \
           313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 \
           330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 \
           347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 \
           364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 \
           381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 \
           398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 \
           415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 \
           432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 \
           449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 \
           466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 \
           483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 \
           500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 \
           517 518 519 520 )} 
wvOverlay -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 \
           45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 \
           67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 \
           89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 \
           109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 \
           126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 \
           143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 \
           160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 \
           177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 \
           194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 \
           211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 \
           228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 \
           245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 \
           262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 \
           279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 \
           296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 \
           313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 \
           330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 \
           347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 \
           364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 \
           381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 \
           398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 \
           415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 \
           432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 \
           449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 \
           466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 \
           483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 \
           500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 \
           517 518 519 520 )} 
wvOverlay -win $_nWave1
wvScrollDown -win $_nWave1 19
wvSetCursor -win $_nWave1 3337948862.924886 -snap {("G1" 519)}
wvSetCursor -win $_nWave1 3335568068.987816 -snap {("G1" 520)}
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 485
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCollapseBus -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/Vsync} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/rst} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/cnt_pixel_serial\[3:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/Vsync} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 41498972.409493 -snap {("G1" 10)}
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 8598087.131122 -snap {("G1" 10)}
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSearchPrev -win $_nWave1
wvOpenFile -win $_nWave1 \
           {/home/DICS/M10912039/CIC/CIC_2017_grad/final/LEDDC_60fps.fsdb}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvCloseFile -win $_nWave1 \
           {/home/DICS/M10912039/CIC/CIC_2017_grad/final/LEDDC_30fps.fsdb}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/Vsync} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvExpandBus -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 1737.723973 -snap {("G1" 3)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvCollapseBus -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 473696364.545093 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
{/test/u_LEDDC/GCK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
{/test/u_LEDDC/GCK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 )} 
wvSetRadix -win $_nWave1 -format Bin
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvExpandBus -win $_nWave1 {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[14\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[13\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[12\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[11\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[10\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[9\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[8\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[7\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[6\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[5\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[4\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[3\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[2\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[1\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[0\]\[15:0\]} \
{/test/u_LEDDC/OUT\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[14\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[13\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[12\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[11\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[10\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[9\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[8\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[7\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[6\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[5\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[4\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[3\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[2\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[1\]\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[0\]\[15:0\]} \
{/test/u_LEDDC/OUT\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvExpandBus -win $_nWave1 {("G2" 18)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G2" 33 )} 
wvSelectSignal -win $_nWave1 {( "G2" 34 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
