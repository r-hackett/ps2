
.syntax new
.name test
.vu
.init_vf_all
.init_vi_all

--enter
--endenter

    iaddiu vertexData, vi00, 7
    iaddiu destAdress, vi00, 20
    iaddiu kickAdress, vi00, 20

    lq  gifTag, 5(vi00)
    sqi gifTag, (destAdress++)

    lq  color, 6(vi00)
    sqi color, (destAdress++)

    iaddiu vertexCounter, vi00, 3
 
--exit

--endexit
