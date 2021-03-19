wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/DICS/M10912039/CIC/CIC_2017_grad/final/LEDDC_30fps.fsdb}
wvResizeWindow -win $_nWave1 1536 45 1344 777
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram1"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvExpandBus -win $_nWave1 {("G1" 1)}
wvScrollUp -win $_nWave1 37
wvScrollUp -win $_nWave1 445
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvCollapseBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram1"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
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
wvResizeWindow -win $_nWave1 1536 45 1344 777
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetCursor -win $_nWave1 22742271.968580 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvExpandBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 516)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 13
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 20
wvScrollUp -win $_nWave1 15
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 18
wvScrollUp -win $_nWave1 19
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 13
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 13
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 9
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 10
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 14
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 10
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 10
wvScrollDown -win $_nWave1 10
wvScrollDown -win $_nWave1 11
wvScrollDown -win $_nWave1 14
wvScrollDown -win $_nWave1 18
wvScrollDown -win $_nWave1 27
wvScrollDown -win $_nWave1 19
wvScrollDown -win $_nWave1 32
wvScrollDown -win $_nWave1 25
wvScrollDown -win $_nWave1 19
wvScrollDown -win $_nWave1 21
wvScrollDown -win $_nWave1 16
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 12
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 13
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 2
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 517)}
wvSetPosition -win $_nWave1 {("G1" 517)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/sram1/mem\[511\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[510\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[509\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[508\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[507\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[506\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[505\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[504\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[503\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[502\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[501\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[500\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[499\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[498\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[497\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[496\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[495\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[494\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[493\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[492\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[491\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[490\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[489\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[488\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[487\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[486\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[485\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[484\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[483\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[482\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[481\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[480\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[479\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[478\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[477\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[476\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[475\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[474\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[473\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[472\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[471\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[470\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[469\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[468\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[467\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[466\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[465\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[464\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[463\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[462\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[461\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[460\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[459\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[458\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[457\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[456\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[455\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[454\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[453\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[452\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[451\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[450\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[449\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[448\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[447\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[446\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[445\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[444\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[443\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[442\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[441\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[440\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[439\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[438\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[437\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[436\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[435\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[434\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[433\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[432\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[431\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[430\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[429\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[428\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[427\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[426\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[425\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[424\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[423\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[422\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[421\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[420\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[419\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[418\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[417\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[416\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[415\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[414\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[413\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[412\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[411\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[410\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[409\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[408\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[407\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[406\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[405\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[404\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[403\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[402\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[401\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[400\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[399\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[398\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[397\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[396\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[395\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[394\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[393\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[392\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[391\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[390\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[389\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[388\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[387\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[386\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[385\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[384\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[383\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[382\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[381\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[380\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[379\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[378\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[377\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[376\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[375\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[374\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[373\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[372\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[371\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[370\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[369\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[368\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[367\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[366\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[365\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[364\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[363\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[362\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[361\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[360\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[359\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[358\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[357\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[356\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[355\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[354\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[353\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[352\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[351\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[350\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[349\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[348\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[347\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[346\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[345\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[344\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[343\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[342\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[341\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[340\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[339\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[338\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[337\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[336\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[335\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[334\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[333\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[332\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[331\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[330\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[329\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[328\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[327\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[326\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[325\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[324\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[323\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[322\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[321\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[320\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[319\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[318\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[317\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[316\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[315\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[314\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[313\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[312\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[311\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[310\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[309\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[308\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[307\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[306\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[305\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[304\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[303\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[302\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[301\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[300\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[299\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[298\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[297\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[296\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[295\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[294\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[293\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[292\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[291\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[290\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[289\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[288\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[287\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[286\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[285\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[284\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[283\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[282\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[281\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[280\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[279\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[278\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[277\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[276\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[275\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[274\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[273\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[272\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[271\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[270\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[269\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[268\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[267\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[266\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[265\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[264\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[263\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[262\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[261\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[260\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[259\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[258\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[257\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[256\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[255\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[254\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[253\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[252\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[251\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[250\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[249\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[248\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[247\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[246\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[245\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[244\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[243\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[242\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[241\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[240\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[239\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[238\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[237\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[236\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[235\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[234\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[233\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[232\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[231\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[230\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[229\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[228\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[227\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[226\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[225\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[224\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[223\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[222\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[221\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[220\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[219\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[218\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[217\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[216\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[215\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[214\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[213\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[212\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[211\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[210\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[209\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[208\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[207\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[206\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[205\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[204\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[203\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[202\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[201\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[200\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[199\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[198\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[197\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[196\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[195\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[194\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[193\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[192\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[191\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[190\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[189\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[188\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[187\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[186\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[185\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[184\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[183\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[182\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[181\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[180\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[179\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[178\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[177\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[176\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[175\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[174\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[173\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[172\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[171\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[170\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[169\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[168\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[167\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[166\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[165\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[164\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[163\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[162\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[161\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[160\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[159\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[158\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[157\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[156\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[155\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[154\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[153\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[152\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[151\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[150\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[149\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[148\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[147\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[146\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[145\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[144\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[143\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[142\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[141\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[140\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[139\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[138\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[137\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[136\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[135\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[134\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[133\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[132\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[131\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[130\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[129\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[128\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[127\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[126\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[125\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[124\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[123\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[122\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[121\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[120\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[119\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[118\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[117\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[116\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[115\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[114\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[113\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[112\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[111\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[110\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[109\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[108\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[107\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[106\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[105\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[104\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[103\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[102\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[101\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[100\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[99\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[98\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[97\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[96\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[95\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[94\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[93\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[92\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[91\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[90\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[89\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[88\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[87\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[86\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[85\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[84\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[83\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[82\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[81\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[80\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[79\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[78\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[77\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[76\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[75\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[74\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[73\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[72\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[71\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[70\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[69\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[68\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[67\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[66\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[65\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[64\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[63\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[62\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[61\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[60\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[59\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[58\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[57\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[56\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[55\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[54\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[53\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[52\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[51\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[50\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[49\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[48\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[47\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[46\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[45\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[44\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[43\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[42\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[41\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[40\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[39\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[38\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[37\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[36\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[35\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[34\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[33\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[32\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[31\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[30\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[29\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[28\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[27\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[26\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[25\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[24\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[23\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[22\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[21\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[20\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[19\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[18\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[17\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[16\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[15\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[14\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[13\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[12\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[11\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[10\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[9\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[8\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[7\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[6\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[5\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[4\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[3\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[2\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[1\]\[15:0\]} \
{/test/u_LEDDC/sram1/mem\[0\]\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/en_w_n} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 517 )} 
wvSetPosition -win $_nWave1 {("G1" 517)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 482 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 28
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 18
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 9
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 17
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 33
wvScrollUp -win $_nWave1 20
wvScrollUp -win $_nWave1 21
wvScrollUp -win $_nWave1 28
wvScrollUp -win $_nWave1 15
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 21
wvScrollUp -win $_nWave1 15
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 13
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvCollapseBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvExpandBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 517)}
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
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 513 )} 
wvScrollUp -win $_nWave1 22
wvScrollUp -win $_nWave1 465
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvCollapseBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 11672795.497186 -snap {("G1" 1)}
wvSetWindowTimeUnit -win $_nWave1 1.000000 ns
wvGoToTime -win $_nWave1 22750
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/en_w_n} \
{/test/u_LEDDC/sram1_addr_w\[9:0\]} \
{/test/u_LEDDC/sram1_w\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/en_w_n} \
{/test/u_LEDDC/sram1_addr_w\[9:0\]} \
{/test/u_LEDDC/sram1_w\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram1"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/en_w_n} \
{/test/u_LEDDC/sram1_addr_w\[9:0\]} \
{/test/u_LEDDC/sram1_w\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/en_w_n} \
{/test/u_LEDDC/sram1_addr_w\[9:0\]} \
{/test/u_LEDDC/sram1_w\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram1"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/en_w_n} \
{/test/u_LEDDC/sram1_addr_w\[9:0\]} \
{/test/u_LEDDC/sram1_w\[15:0\]} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/sram1/mem\[511:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/DAI} \
{/test/u_LEDDC/enwvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvCollapseBus -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 11305.798638 -snap {("G2" 3)}
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
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 592375500.000000
wvSetCursor -win $_nWave1 592375500.000000
wvSetCursor -win $_nWave1 592375500.000000
wvSetCursor -win $_nWave1 19156625470.454479
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSearchPrev -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram256_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram256_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 72524572476.742310 -snap {("G2" 3)}
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
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4466660.138984 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 3923981.804341
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 7894832611.768973
wvSetSearchMode -win $_nWave1 -value 2b2b
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
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
wvSetSearchMode -win $_nWave1 -value 23a3
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 20652439250.000000
wvSetCursor -win $_nWave1 20652497078.067341
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
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
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetSearchMode -win $_nWave1 -value 5454
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
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 4724410211.662273 -snap {("G2" 3)}
wvSetSearchMode -win $_nWave1 -value 0
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 16667968587.250463 -snap {("G2" 4)}
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvExpandBus -win $_nWave1 {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvCollapseBus -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetMarker -win $_nWave1 -keepViewRange -name "M1" 4724410440.209135
wvSetMarker -win $_nWave1 -keepViewRange -name "M1" 4724410440.209135
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/DEN} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/DEN} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 16663954047.579643
wvSetMarker -win $_nWave1 -keepViewRange -name "M2" 16663954047.579643
wvSetMarker -win $_nWave1 -keepViewRange -name "M2" 16663954047.579643
wvSetMarker -win $_nWave1 -keepViewRange -name "M3" 21403456155.383137
wvSetMarker -win $_nWave1 -keepViewRange -name "M3" 21403456155.383137
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvJumpToolbarUserMarker -win $_nWave1 -name "M2"
wvSelectUserMarker -win $_nWave1 -name "M2"
wvSetMarker -win $_nWave1 -keepViewRange -name "M2" 16667766710.747496
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvExpandBus -win $_nWave1 {("G2" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvJumpToolbarUserMarker -win $_nWave1 -name "M3"
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvJumpToolbarUserMarker -win $_nWave1 -name "M3"
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectUserMarker -win $_nWave1 -name "M3"
wvSetMarker -win $_nWave1 -keepViewRange -name "M3" 21390234552.478565
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvJumpToolbarUserMarker -win $_nWave1 -name "M3"
wvSelectUserMarker -win $_nWave1 -name "M3"
wvSetMarker -win wvResizeWindow -win $_nWave1 0 23 1920 1057
wvResizeWindow -win $_nWave1 0 23 1920 1007
wvResizeWindow -win $_nWave1 0 23 1920 1015
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1057
wvResizeWindow -win $_nWave1 1536 45 1344 817
wvResizeWindow -win $_nWave1 1536 45 1344 777
GetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
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
{/test/u_LEDDC/pixel_value\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram256"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram512"
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
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
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
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
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSetPosition -win $_nWave1 {("G2" 24)}
wvGetSignalClose -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvExpandBus -win $_nWave1 {("G2" 24)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 536 )} 
wvSetCursor -win $_nWave1 20887558568.517921
wvSetSearchMode -win $_nWave1 -anyChange
wvSearchPrev -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 16
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 15
wvScrollUp -win $_nWave1 14
wvScrollUp -win $_nWave1 46
wvScrollUp -win $_nWave1 26
wvScrollUp -win $_nWave1 15
wvScrollUp -win $_nWave1 23
wvScrollUp -win $_nWave1 21
wvScrollUp -win $_nWave1 21
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 11
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvExpandBus -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 552)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvCollapseBus -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 536)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvCollapseBus -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 520)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvExpandBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 536)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvCollapseBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 520)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram512"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 16690051000.000000
wvSetCursor -win $_nWave1 28365964182.045353
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
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 25965074250.000000
wvSetCursor -win $_nWave1 26046384220.035847
wvSetCursor -win $_nWave1 25967125353.520535 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvUnselectUserMarker -win $_nWave1
wvSetCursor -win $_nWave1 25771872471.681145
wvSearchPrev -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 21390180750.000000
wvSetCursor -win $_nWave1 21500082853.143131
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 21537875089.483013 -snap {("G2" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram512"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetCursor -win $_nWave1 21537879872.705517 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvExpandBus -win $_nWave1 {("G2" 6)}
wvSetCursor -win $_nWave1 21537876393.998241 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537880416.253529 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537876067.869434 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 21537877481.094265 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537879872.705517 -snap {("G2" 4)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 21537880851.091938 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537875959.159832 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537879111.738300 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537881503.349548 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537876828.836651 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537880742.382336 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537876502.707844 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537877372.384663 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537875741.740627 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537877372.384663 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537878568.190289 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21537875850.450230 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 21537877263.675060 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537875633.031025 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 21537877698.513470 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537875524.321423 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 21537877481.094265 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537875959.159832 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 21537877372.384663 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 21537879220.447903 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 21537880959.801540 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvCollapseBus -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetCursor -win $_nWave1 4008198379.930665
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
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram256"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/sram256/mem\[255:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvExpandBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvCollapseBus -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvExpandBus -win $_nWave1 {("G2" 8)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 230
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvExpandBus -win $_nWave1 {("G2" 8)}
wvScrollUp -win $_nWave1 194
wvScrollUp -win $_nWave1 41
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
wvResizeWindow -win $_nWave1 0 23 1920 1057
wvResizeWindow -win $_nWave1 0 23 1920 1007
wvResizeWindow -win $_nWave1 0 23 1920 1015
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1057
wvResizeWindow -win $_nWave1 1536 45 1344 817
wvResizeWindow -win $_nWave1 1536 45 1344 817
wvResizeWindow -win $_nWave1 1536 45 1344 777
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 15
wvScrollUp -win $_nWave1 74
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvExpandBus -win $_nWave1 {("G2" 8)}
wvSetCursor -win $_nWave1 22504897905.169559 -snap {("G2" 257)}
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 89722817.993461 -snap {("G2" 236)}
wvSetCursor -win $_nWave1 0.000000
wvSetCursor -win $_nWave1 33395589.823869
wvSearchPrev -win $_nWave1
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 7
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 2
wvSetCursor -win $_nWave1 65010081.523798
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 1191220689.016657
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvScrollUp -win $_nWave1 33
wvScrollUp -win $_nWave1 204
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram256"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/sram256/mem\[255:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/sram256/mem\[255:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvExpandBus -win $_nWave1 {("G2" 8)}
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 233
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvGoToTime -win $_nWave1 2075500
wvSetWindowTimeUnit -win $_nWave1 1.000000 ps
wvSetWindowTimeUnit -win $_nWave1 1.000000 ps
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
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram512"
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC/sram256"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 2017323.029605 -snap {("G3" 0)}
wvGetSignalSetScope -win $_nWave1 "/test/u_LEDDC"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/sram256/mem\[255:0\]} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetSearchMode -win $_nWave1 -value 0
wvSetSearchMode -win $_nWave1 -value 256
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -anyChange
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetSearchMode -win $_nWave1 -value 256
wvSetCursor -win $_nWave1 21390125753.809460
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvExpandBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 265)}
wvScrollUp -win $_nWave1 57
wvScrollUp -win $_nWave1 179
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvCollapseBus -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 19029252515.175137
wvSetSearchMode -win $_nWave1 -value 4848
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
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
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvGoToTime -win $_nWave1 21242797750
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/sram256/mem\[255:0\]} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/clk256_r} \
{/test/u_LEDDC/clk256_w} \
{/test/u_LEDDC/en256_r_n} \
{/test/u_LEDDC/en256_w_n} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_LEDDC/GCK} \
{/test/u_LEDDC/Vsync} \
{/test/u_LEDDC/cnt_pwm\[15:0\]} \
{/test/u_LEDDC/cnt_pwm\[15\]} \
{/test/u_LEDDC/en512_r_n} \
{/test/u_LEDDC/clk512_r} \
{/test/u_LEDDC/cnt_scanline\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_LEDDC/OUT\[15:0\]} \
{/test/u_LEDDC/DCK} \
{/test/u_LEDDC/DEN} \
{/test/u_LEDDC/sram512_addr_r\[8:0\]} \
{/test/u_LEDDC/sram512_r\[15:0\]} \
{/test/u_LEDDC/sram256_addr_w\[7:0\]} \
{/test/u_LEDDC/sram256_w\[15:0\]} \
{/test/u_LEDDC/sram256/mem\[255:0\]} \
{/test/u_LEDDC/cnt_pixel_index\[8:0\]} \
{/test/u_LEDDC/clk256_r} \
{/test/u_LEDDC/clk256_w} \
{/test/u_LEDDC/en256_r_n} \
{/test/u_LEDDC/en256_w_n} \
{/test/u_LEDDC/OUT_buffer\[15:0\]} \
{/test/u_LEDDC/pixel_value\[15:0\]} \
{/test/u_LEDDC/sram512/mem\[511:0\]} \
{/test/u_LEDDC/sram512_addr_w\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 21242729154.238987 -snap {("G2" 12)}
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
