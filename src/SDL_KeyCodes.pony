use "collections"


primitive _SCANCODEMASK
	fun apply(): U32 => (1<<30)

primitive SDLKeyUNKNOWN
	fun apply(): I32 => 0

primitive SDLKeyRETURN
	fun apply(): I32 => '\r'
primitive SDLKeyESCAPE
	fun apply(): I32 => '\x1B'
primitive SDLKeyBACKSPACE
	fun apply(): I32 => '\b'
primitive SDLKeyTAB
	fun apply(): I32 => '\t'
primitive SDLKeySPACE
	fun apply(): I32 => ' '
primitive SDLKeyEXCLAIM
	fun apply(): I32 => '!'
primitive SDLKeyQUOTEDBL
	fun apply(): I32 => '"'
primitive SDLKeyHASH
	fun apply(): I32 => '#'
primitive SDLKeyPERCENT
	fun apply(): I32 => '%'
primitive SDLKeyDOLLAR
	fun apply(): I32 => '$'
primitive SDLKeyAMPERSAND
	fun apply(): I32 => '&'
primitive SDLKeyQUOTE
	fun apply(): I32 => '\''
primitive SDLKeyLEFTPAREN
	fun apply(): I32 => '('
primitive SDLKeyRIGHTPAREN
	fun apply(): I32 => ')'
primitive SDLKeyASTERISK
	fun apply(): I32 => '*'
primitive SDLKeyPLUS
	fun apply(): I32 => '+'
primitive SDLKeyCOMMA
	fun apply(): I32 => ','
primitive SDLKeyMINUS
	fun apply(): I32 => '-'
primitive SDLKeyPERIOD
	fun apply(): I32 => '.'
primitive SDLKeySLASH
	fun apply(): I32 => '/'
primitive SDLKey0
	fun apply(): I32 => '0'
primitive SDLKey1
	fun apply(): I32 => '1'
primitive SDLKey2
	fun apply(): I32 => '2'
primitive SDLKey3
	fun apply(): I32 => '3'
primitive SDLKey4
	fun apply(): I32 => '4'
primitive SDLKey5
	fun apply(): I32 => '5'
primitive SDLKey6
	fun apply(): I32 => '6'
primitive SDLKey7
	fun apply(): I32 => '7'
primitive SDLKey8
	fun apply(): I32 => '8'
primitive SDLKey9
	fun apply(): I32 => '9'
primitive SDLKeyCOLON
	fun apply(): I32 => ':'
primitive SDLKeySEMICOLON
	fun apply(): I32 => ';'
primitive SDLKeyLESS
	fun apply(): I32 => '<'
primitive SDLKeyEQUALS
	fun apply(): I32 => '='
primitive SDLKeyGREATER
	fun apply(): I32 => '>'
primitive SDLKeyQUESTION
	fun apply(): I32 => '?'
primitive SDLKeyAT
	fun apply(): I32 => '@'

primitive SDLKeyLEFTBRACKET
	fun apply(): I32 => '['
primitive SDLKeyBACKSLASH
	fun apply(): I32 => '\\'
primitive SDLKeyRIGHTBRACKET
	fun apply(): I32 => ']'
primitive SDLKeyCARET
	fun apply(): I32 => '^'
primitive SDLKeyUNDERSCORE
	fun apply(): I32 => '_'
primitive SDLKeyBACKQUOTE
	fun apply(): I32 => '`'
primitive SDLKeya
	fun apply(): I32 => 'a'
primitive SDLKeyb
	fun apply(): I32 => 'b'
primitive SDLKeyc
	fun apply(): I32 => 'c'
primitive SDLKeyd
	fun apply(): I32 => 'd'
primitive SDLKeye
	fun apply(): I32 => 'e'
primitive SDLKeyf
	fun apply(): I32 => 'f'
primitive SDLKeyg
	fun apply(): I32 => 'g'
primitive SDLKeyh
	fun apply(): I32 => 'h'
primitive SDLKeyi
	fun apply(): I32 => 'i'
primitive SDLKeyj
	fun apply(): I32 => 'j'
primitive SDLKeyk
	fun apply(): I32 => 'k'
primitive SDLKeyl
	fun apply(): I32 => 'l'
primitive SDLKeym
	fun apply(): I32 => 'm'
primitive SDLKeyn
	fun apply(): I32 => 'n'
primitive SDLKeyo
	fun apply(): I32 => 'o'
primitive SDLKeyp
	fun apply(): I32 => 'p'
primitive SDLKeyq
	fun apply(): I32 => 'q'
primitive SDLKeyr
	fun apply(): I32 => 'r'
primitive SDLKeys
	fun apply(): I32 => 's'
primitive SDLKeyt
	fun apply(): I32 => 't'
primitive SDLKeyu
	fun apply(): I32 => 'u'
primitive SDLKeyv
	fun apply(): I32 => 'v'
primitive SDLKeyw
	fun apply(): I32 => 'w'
primitive SDLKeyx
	fun apply(): I32 => 'x'
primitive SDLKeyy
	fun apply(): I32 => 'y'
primitive SDLKeyz
	fun apply(): I32 => 'z'

primitive SDLKeyCAPSLOCK
	fun apply(): I32 => I32.from[U32](SDLScanCodeCAPSLOCK() or _SCANCODEMASK())

primitive SDLKeyF1
	fun apply(): I32 => I32.from[U32](SDLScanCodeF1() or _SCANCODEMASK())
primitive SDLKeyF2
	fun apply(): I32 => I32.from[U32](SDLScanCodeF2() or _SCANCODEMASK())
primitive SDLKeyF3
	fun apply(): I32 => I32.from[U32](SDLScanCodeF3() or _SCANCODEMASK())
primitive SDLKeyF4
	fun apply(): I32 => I32.from[U32](SDLScanCodeF4() or _SCANCODEMASK())
primitive SDLKeyF5
	fun apply(): I32 => I32.from[U32](SDLScanCodeF5() or _SCANCODEMASK())
primitive SDLKeyF6
	fun apply(): I32 => I32.from[U32](SDLScanCodeF6() or _SCANCODEMASK())
primitive SDLKeyF7
	fun apply(): I32 => I32.from[U32](SDLScanCodeF7() or _SCANCODEMASK())
primitive SDLKeyF8
	fun apply(): I32 => I32.from[U32](SDLScanCodeF8() or _SCANCODEMASK())
primitive SDLKeyF9
	fun apply(): I32 => I32.from[U32](SDLScanCodeF9() or _SCANCODEMASK())
primitive SDLKeyF10
	fun apply(): I32 => I32.from[U32](SDLScanCodeF10() or _SCANCODEMASK())
primitive SDLKeyF11
	fun apply(): I32 => I32.from[U32](SDLScanCodeF11() or _SCANCODEMASK())
primitive SDLKeyF12
	fun apply(): I32 => I32.from[U32](SDLScanCodeF12() or _SCANCODEMASK())

primitive SDLKeyPRINTSCREEN
	fun apply(): I32 => I32.from[U32](SDLScanCodePRINTSCREEN() or _SCANCODEMASK())
primitive SDLKeySCROLLLOCK
	fun apply(): I32 => I32.from[U32](SDLScanCodeSCROLLLOCK() or _SCANCODEMASK())
primitive SDLKeyPAUSE
	fun apply(): I32 => I32.from[U32](SDLScanCodePAUSE() or _SCANCODEMASK())
primitive SDLKeyINSERT
	fun apply(): I32 => I32.from[U32](SDLScanCodeINSERT() or _SCANCODEMASK())
primitive SDLKeyHOME
	fun apply(): I32 => I32.from[U32](SDLScanCodeHOME() or _SCANCODEMASK())
primitive SDLKeyPAGEUP
	fun apply(): I32 => I32.from[U32](SDLScanCodePAGEUP() or _SCANCODEMASK())
primitive SDLKeyDELETE
	fun apply(): I32 => '\x7F'
primitive SDLKeyEND
	fun apply(): I32 => I32.from[U32](SDLScanCodeEND() or _SCANCODEMASK())
primitive SDLKeyPAGEDOWN
	fun apply(): I32 => I32.from[U32](SDLScanCodePAGEDOWN() or _SCANCODEMASK())
primitive SDLKeyRIGHT
	fun apply(): I32 => I32.from[U32](SDLScanCodeRIGHT() or _SCANCODEMASK())
primitive SDLKeyLEFT
	fun apply(): I32 => I32.from[U32](SDLScanCodeLEFT() or _SCANCODEMASK())
primitive SDLKeyDOWN
	fun apply(): I32 => I32.from[U32](SDLScanCodeDOWN() or _SCANCODEMASK())
primitive SDLKeyUP
	fun apply(): I32 => I32.from[U32](SDLScanCodeUP() or _SCANCODEMASK())

primitive SDLKeyNUMLOCKCLEAR
	fun apply(): I32 => I32.from[U32](SDLScanCodeNUMLOCKCLEAR() or _SCANCODEMASK())
primitive SDLKeyKPDIVIDE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPDIVIDE() or _SCANCODEMASK())
primitive SDLKeyKPMULTIPLY
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMULTIPLY() or _SCANCODEMASK())
primitive SDLKeyKPMINUS
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMINUS() or _SCANCODEMASK())
primitive SDLKeyKPPLUS
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPPLUS() or _SCANCODEMASK())
primitive SDLKeyKPENTER
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPENTER() or _SCANCODEMASK())
primitive SDLKeyKP1
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP1() or _SCANCODEMASK())
primitive SDLKeyKP2
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP2() or _SCANCODEMASK())
primitive SDLKeyKP3
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP3() or _SCANCODEMASK())
primitive SDLKeyKP4
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP4() or _SCANCODEMASK())
primitive SDLKeyKP5
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP5() or _SCANCODEMASK())
primitive SDLKeyKP6
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP6() or _SCANCODEMASK())
primitive SDLKeyKP7
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP7() or _SCANCODEMASK())
primitive SDLKeyKP8
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP8() or _SCANCODEMASK())
primitive SDLKeyKP9
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP9() or _SCANCODEMASK())
primitive SDLKeyKP0
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP0() or _SCANCODEMASK())
primitive SDLKeyKPPERIOD
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPPERIOD() or _SCANCODEMASK())

primitive SDLKeyAPPLICATION
	fun apply(): I32 => I32.from[U32](SDLScanCodeAPPLICATION() or _SCANCODEMASK())
primitive SDLKeyPOWER
	fun apply(): I32 => I32.from[U32](SDLScanCodePOWER() or _SCANCODEMASK())
primitive SDLKeyKPEQUALS
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPEQUALS() or _SCANCODEMASK())
primitive SDLKeyF13
	fun apply(): I32 => I32.from[U32](SDLScanCodeF13() or _SCANCODEMASK())
primitive SDLKeyF14
	fun apply(): I32 => I32.from[U32](SDLScanCodeF14() or _SCANCODEMASK())
primitive SDLKeyF15
	fun apply(): I32 => I32.from[U32](SDLScanCodeF15() or _SCANCODEMASK())
primitive SDLKeyF16
	fun apply(): I32 => I32.from[U32](SDLScanCodeF16() or _SCANCODEMASK())
primitive SDLKeyF17
	fun apply(): I32 => I32.from[U32](SDLScanCodeF17() or _SCANCODEMASK())
primitive SDLKeyF18
	fun apply(): I32 => I32.from[U32](SDLScanCodeF18() or _SCANCODEMASK())
primitive SDLKeyF19
	fun apply(): I32 => I32.from[U32](SDLScanCodeF19() or _SCANCODEMASK())
primitive SDLKeyF20
	fun apply(): I32 => I32.from[U32](SDLScanCodeF20() or _SCANCODEMASK())
primitive SDLKeyF21
	fun apply(): I32 => I32.from[U32](SDLScanCodeF21() or _SCANCODEMASK())
primitive SDLKeyF22
	fun apply(): I32 => I32.from[U32](SDLScanCodeF22() or _SCANCODEMASK())
primitive SDLKeyF23
	fun apply(): I32 => I32.from[U32](SDLScanCodeF23() or _SCANCODEMASK())
primitive SDLKeyF24
	fun apply(): I32 => I32.from[U32](SDLScanCodeF24() or _SCANCODEMASK())
primitive SDLKeyEXECUTE
	fun apply(): I32 => I32.from[U32](SDLScanCodeEXECUTE() or _SCANCODEMASK())
primitive SDLKeyHELP
	fun apply(): I32 => I32.from[U32](SDLScanCodeHELP() or _SCANCODEMASK())
primitive SDLKeyMENU
	fun apply(): I32 => I32.from[U32](SDLScanCodeMENU() or _SCANCODEMASK())
primitive SDLKeySELECT
	fun apply(): I32 => I32.from[U32](SDLScanCodeSELECT() or _SCANCODEMASK())
primitive SDLKeySTOP
	fun apply(): I32 => I32.from[U32](SDLScanCodeSTOP() or _SCANCODEMASK())
primitive SDLKeyAGAIN
	fun apply(): I32 => I32.from[U32](SDLScanCodeAGAIN() or _SCANCODEMASK())
primitive SDLKeyUNDO
	fun apply(): I32 => I32.from[U32](SDLScanCodeUNDO() or _SCANCODEMASK())
primitive SDLKeyCUT
	fun apply(): I32 => I32.from[U32](SDLScanCodeCUT() or _SCANCODEMASK())
primitive SDLKeyCOPY
	fun apply(): I32 => I32.from[U32](SDLScanCodeCOPY() or _SCANCODEMASK())
primitive SDLKeyPASTE
	fun apply(): I32 => I32.from[U32](SDLScanCodePASTE() or _SCANCODEMASK())
primitive SDLKeyFIND
	fun apply(): I32 => I32.from[U32](SDLScanCodeFIND() or _SCANCODEMASK())
primitive SDLKeyMUTE
	fun apply(): I32 => I32.from[U32](SDLScanCodeMUTE() or _SCANCODEMASK())
primitive SDLKeyVOLUMEUP
	fun apply(): I32 => I32.from[U32](SDLScanCodeVOLUMEUP() or _SCANCODEMASK())
primitive SDLKeyVOLUMEDOWN
	fun apply(): I32 => I32.from[U32](SDLScanCodeVOLUMEDOWN() or _SCANCODEMASK())
primitive SDLKeyKPCOMMA
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPCOMMA() or _SCANCODEMASK())
primitive SDLKeyKPEQUALSAS400
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPEQUALSAS400() or _SCANCODEMASK())

primitive SDLKeyALTERASE
	fun apply(): I32 => I32.from[U32](SDLScanCodeALTERASE() or _SCANCODEMASK())
primitive SDLKeySYSREQ
	fun apply(): I32 => I32.from[U32](SDLScanCodeSYSREQ() or _SCANCODEMASK())
primitive SDLKeyCANCEL
	fun apply(): I32 => I32.from[U32](SDLScanCodeCANCEL() or _SCANCODEMASK())
primitive SDLKeyCLEAR
	fun apply(): I32 => I32.from[U32](SDLScanCodeCLEAR() or _SCANCODEMASK())
primitive SDLKeyPRIOR
	fun apply(): I32 => I32.from[U32](SDLScanCodePRIOR() or _SCANCODEMASK())
primitive SDLKeyRETURN2
	fun apply(): I32 => I32.from[U32](SDLScanCodeRETURN2() or _SCANCODEMASK())
primitive SDLKeySEPARATOR
	fun apply(): I32 => I32.from[U32](SDLScanCodeSEPARATOR() or _SCANCODEMASK())
primitive SDLKeyOUT
	fun apply(): I32 => I32.from[U32](SDLScanCodeOUT() or _SCANCODEMASK())
primitive SDLKeyOPER
	fun apply(): I32 => I32.from[U32](SDLScanCodeOPER() or _SCANCODEMASK())
primitive SDLKeyCLEARAGAIN
	fun apply(): I32 => I32.from[U32](SDLScanCodeCLEARAGAIN() or _SCANCODEMASK())
primitive SDLKeyCRSEL
	fun apply(): I32 => I32.from[U32](SDLScanCodeCRSEL() or _SCANCODEMASK())
primitive SDLKeyEXSEL
	fun apply(): I32 => I32.from[U32](SDLScanCodeEXSEL() or _SCANCODEMASK())

primitive SDLKeyKP00
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP00() or _SCANCODEMASK())
primitive SDLKeyKP000
	fun apply(): I32 => I32.from[U32](SDLScanCodeKP000() or _SCANCODEMASK())
primitive SDLKeyTHOUSANDSSEPARATOR
	fun apply(): I32 => I32.from[U32](SDLScanCodeTHOUSANDSSEPARATOR() or _SCANCODEMASK())
primitive SDLKeyDECIMALSEPARATOR
	fun apply(): I32 => I32.from[U32](SDLScanCodeDECIMALSEPARATOR() or _SCANCODEMASK())
primitive SDLKeyCURRENCYUNIT
	fun apply(): I32 => I32.from[U32](SDLScanCodeCURRENCYUNIT() or _SCANCODEMASK())
primitive SDLKeyCURRENCYSUBUNIT
	fun apply(): I32 => I32.from[U32](SDLScanCodeCURRENCYSUBUNIT() or _SCANCODEMASK())
primitive SDLKeyKPLEFTPAREN
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPLEFTPAREN() or _SCANCODEMASK())
primitive SDLKeyKPRIGHTPAREN
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPRIGHTPAREN() or _SCANCODEMASK())
primitive SDLKeyKPLEFTBRACE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPLEFTBRACE() or _SCANCODEMASK())
primitive SDLKeyKPRIGHTBRACE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPRIGHTBRACE() or _SCANCODEMASK())
primitive SDLKeyKPTAB
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPTAB() or _SCANCODEMASK())
primitive SDLKeyKPBACKSPACE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPBACKSPACE() or _SCANCODEMASK())
primitive SDLKeyKPA
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPA() or _SCANCODEMASK())
primitive SDLKeyKPB
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPB() or _SCANCODEMASK())
primitive SDLKeyKPC
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPC() or _SCANCODEMASK())
primitive SDLKeyKPD
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPD() or _SCANCODEMASK())
primitive SDLKeyKPE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPE() or _SCANCODEMASK())
primitive SDLKeyKPF
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPF() or _SCANCODEMASK())
primitive SDLKeyKPXOR
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPXOR() or _SCANCODEMASK())
primitive SDLKeyKPPOWER
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPPOWER() or _SCANCODEMASK())
primitive SDLKeyKPPERCENT
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPPERCENT() or _SCANCODEMASK())
primitive SDLKeyKPLESS
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPLESS() or _SCANCODEMASK())
primitive SDLKeyKPGREATER
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPGREATER() or _SCANCODEMASK())
primitive SDLKeyKPAMPERSAND
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPAMPERSAND() or _SCANCODEMASK())
primitive SDLKeyKPDBLAMPERSAND
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPDBLAMPERSAND() or _SCANCODEMASK())
primitive SDLKeyKPVERTICALBAR
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPVERTICALBAR() or _SCANCODEMASK())
primitive SDLKeyKPDBLVERTICALBAR
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPDBLVERTICALBAR() or _SCANCODEMASK())
primitive SDLKeyKPCOLON
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPCOLON() or _SCANCODEMASK())
primitive SDLKeyKPHASH
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPHASH() or _SCANCODEMASK())
primitive SDLKeyKPSPACE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPSPACE() or _SCANCODEMASK())
primitive SDLKeyKPAT
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPAT() or _SCANCODEMASK())
primitive SDLKeyKPEXCLAM
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPEXCLAM() or _SCANCODEMASK())
primitive SDLKeyKPMEMSTORE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMSTORE() or _SCANCODEMASK())
primitive SDLKeyKPMEMRECALL
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMRECALL() or _SCANCODEMASK())
primitive SDLKeyKPMEMCLEAR
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMCLEAR() or _SCANCODEMASK())
primitive SDLKeyKPMEMADD
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMADD() or _SCANCODEMASK())
primitive SDLKeyKPMEMSUBTRACT
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMSUBTRACT() or _SCANCODEMASK())
primitive SDLKeyKPMEMMULTIPLY
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMMULTIPLY() or _SCANCODEMASK())
primitive SDLKeyKPMEMDIVIDE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPMEMDIVIDE() or _SCANCODEMASK())
primitive SDLKeyKPPLUSMINUS
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPPLUSMINUS() or _SCANCODEMASK())
primitive SDLKeyKPCLEAR
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPCLEAR() or _SCANCODEMASK())
primitive SDLKeyKPCLEARENTRY
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPCLEARENTRY() or _SCANCODEMASK())
primitive SDLKeyKPBINARY
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPBINARY() or _SCANCODEMASK())
primitive SDLKeyKPOCTAL
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPOCTAL() or _SCANCODEMASK())
primitive SDLKeyKPDECIMAL
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPDECIMAL() or _SCANCODEMASK())
primitive SDLKeyKPHEXADECIMAL
	fun apply(): I32 => I32.from[U32](SDLScanCodeKPHEXADECIMAL() or _SCANCODEMASK())

primitive SDLKeyLCTRL
	fun apply(): I32 => I32.from[U32](SDLScanCodeLCTRL() or _SCANCODEMASK())
primitive SDLKeyLSHIFT
	fun apply(): I32 => I32.from[U32](SDLScanCodeLSHIFT() or _SCANCODEMASK())
primitive SDLKeyLALT
	fun apply(): I32 => I32.from[U32](SDLScanCodeLALT() or _SCANCODEMASK())
primitive SDLKeyLGUI
	fun apply(): I32 => I32.from[U32](SDLScanCodeLGUI() or _SCANCODEMASK())
primitive SDLKeyRCTRL
	fun apply(): I32 => I32.from[U32](SDLScanCodeRCTRL() or _SCANCODEMASK())
primitive SDLKeyRSHIFT
	fun apply(): I32 => I32.from[U32](SDLScanCodeRSHIFT() or _SCANCODEMASK())
primitive SDLKeyRALT
	fun apply(): I32 => I32.from[U32](SDLScanCodeRALT() or _SCANCODEMASK())
primitive SDLKeyRGUI
	fun apply(): I32 => I32.from[U32](SDLScanCodeRGUI() or _SCANCODEMASK())

primitive SDLKeyMODE
	fun apply(): I32 => I32.from[U32](SDLScanCodeMODE() or _SCANCODEMASK())

primitive SDLKeyAUDIONEXT
	fun apply(): I32 => I32.from[U32](SDLScanCodeAUDIONEXT() or _SCANCODEMASK())
primitive SDLKeyAUDIOPREV
	fun apply(): I32 => I32.from[U32](SDLScanCodeAUDIOPREV() or _SCANCODEMASK())
primitive SDLKeyAUDIOSTOP
	fun apply(): I32 => I32.from[U32](SDLScanCodeAUDIOSTOP() or _SCANCODEMASK())
primitive SDLKeyAUDIOPLAY
	fun apply(): I32 => I32.from[U32](SDLScanCodeAUDIOPLAY() or _SCANCODEMASK())
primitive SDLKeyAUDIOMUTE
	fun apply(): I32 => I32.from[U32](SDLScanCodeAUDIOMUTE() or _SCANCODEMASK())
primitive SDLKeyMEDIASELECT
	fun apply(): I32 => I32.from[U32](SDLScanCodeMEDIASELECT() or _SCANCODEMASK())
primitive SDLKeyWWW
	fun apply(): I32 => I32.from[U32](SDLScanCodeWWW() or _SCANCODEMASK())
primitive SDLKeyMAIL
	fun apply(): I32 => I32.from[U32](SDLScanCodeMAIL() or _SCANCODEMASK())
primitive SDLKeyCALCULATOR
	fun apply(): I32 => I32.from[U32](SDLScanCodeCALCULATOR() or _SCANCODEMASK())
primitive SDLKeyCOMPUTER
	fun apply(): I32 => I32.from[U32](SDLScanCodeCOMPUTER() or _SCANCODEMASK())
primitive SDLKeyACSEARCH
	fun apply(): I32 => I32.from[U32](SDLScanCodeACSEARCH() or _SCANCODEMASK())
primitive SDLKeyACHOME
	fun apply(): I32 => I32.from[U32](SDLScanCodeACHOME() or _SCANCODEMASK())
primitive SDLKeyACBACK
	fun apply(): I32 => I32.from[U32](SDLScanCodeACBACK() or _SCANCODEMASK())
primitive SDLKeyACFORWARD
	fun apply(): I32 => I32.from[U32](SDLScanCodeACFORWARD() or _SCANCODEMASK())
primitive SDLKeyACSTOP
	fun apply(): I32 => I32.from[U32](SDLScanCodeACSTOP() or _SCANCODEMASK())
primitive SDLKeyACREFRESH
	fun apply(): I32 => I32.from[U32](SDLScanCodeACREFRESH() or _SCANCODEMASK())
primitive SDLKeyACBOOKMARKS
	fun apply(): I32 => I32.from[U32](SDLScanCodeACBOOKMARKS() or _SCANCODEMASK())

primitive SDLKeyBRIGHTNESSDOWN
	fun apply(): I32 => I32.from[U32](SDLScanCodeBRIGHTNESSDOWN() or _SCANCODEMASK())
primitive SDLKeyBRIGHTNESSUP
	fun apply(): I32 => I32.from[U32](SDLScanCodeBRIGHTNESSUP() or _SCANCODEMASK())
primitive SDLKeyDISPLAYSWITCH
	fun apply(): I32 => I32.from[U32](SDLScanCodeDISPLAYSWITCH() or _SCANCODEMASK())
primitive SDLKeyKBDILLUMTOGGLE
	fun apply(): I32 => I32.from[U32](SDLScanCodeKBDILLUMTOGGLE() or _SCANCODEMASK())
primitive SDLKeyKBDILLUMDOWN
	fun apply(): I32 => I32.from[U32](SDLScanCodeKBDILLUMDOWN() or _SCANCODEMASK())
primitive SDLKeyKBDILLUMUP
	fun apply(): I32 => I32.from[U32](SDLScanCodeKBDILLUMUP() or _SCANCODEMASK())
primitive SDLKeyEJECT
	fun apply(): I32 => I32.from[U32](SDLScanCodeEJECT() or _SCANCODEMASK())
primitive SDLKeySLEEP
	fun apply(): I32 => I32.from[U32](SDLScanCodeSLEEP() or _SCANCODEMASK())

type SDLKeycode is I32

type KeyCode is (
	SDLKeyUNKNOWN
	| SDLKeyRETURN
	| SDLKeyESCAPE
	| SDLKeyBACKSPACE
	| SDLKeyTAB
	| SDLKeySPACE
	| SDLKeyEXCLAIM
	| SDLKeyQUOTEDBL
	| SDLKeyHASH
	| SDLKeyPERCENT
	| SDLKeyDOLLAR
	| SDLKeyAMPERSAND
	| SDLKeyQUOTE
	| SDLKeyLEFTPAREN
	| SDLKeyRIGHTPAREN
	| SDLKeyASTERISK
	| SDLKeyPLUS
	| SDLKeyCOMMA
	| SDLKeyMINUS
	| SDLKeyPERIOD
	| SDLKeySLASH
	| SDLKey0
	| SDLKey1
	| SDLKey2
	| SDLKey3
	| SDLKey4
	| SDLKey5
	| SDLKey6
	| SDLKey7
	| SDLKey8
	| SDLKey9
	| SDLKeyCOLON
	| SDLKeySEMICOLON
	| SDLKeyLESS
	| SDLKeyEQUALS
	| SDLKeyGREATER
	| SDLKeyQUESTION
	| SDLKeyAT
	| SDLKeyLEFTBRACKET
	| SDLKeyBACKSLASH
	| SDLKeyRIGHTBRACKET
	| SDLKeyCARET
	| SDLKeyUNDERSCORE
	| SDLKeyBACKQUOTE
	| SDLKeya
	| SDLKeyb
	| SDLKeyc
	| SDLKeyd
	| SDLKeye
	| SDLKeyf
	| SDLKeyg
	| SDLKeyh
	| SDLKeyi
	| SDLKeyj
	| SDLKeyk
	| SDLKeyl
	| SDLKeym
	| SDLKeyn
	| SDLKeyo
	| SDLKeyp
	| SDLKeyq
	| SDLKeyr
	| SDLKeys
	| SDLKeyt
	| SDLKeyu
	| SDLKeyv
	| SDLKeyw
	| SDLKeyx
	| SDLKeyy
	| SDLKeyz
	| SDLKeyCAPSLOCK
	| SDLKeyF1
	| SDLKeyF2
	| SDLKeyF3
	| SDLKeyF4
	| SDLKeyF5
	| SDLKeyF6
	| SDLKeyF7
	| SDLKeyF8
	| SDLKeyF9
	| SDLKeyF10
	| SDLKeyF11
	| SDLKeyF12
	| SDLKeyPRINTSCREEN
	| SDLKeySCROLLLOCK
	| SDLKeyPAUSE
	| SDLKeyINSERT
	| SDLKeyHOME
	| SDLKeyPAGEUP
	| SDLKeyDELETE
	| SDLKeyEND
	| SDLKeyPAGEDOWN
	| SDLKeyRIGHT
	| SDLKeyLEFT
	| SDLKeyDOWN
	| SDLKeyUP
	| SDLKeyNUMLOCKCLEAR
	| SDLKeyKPDIVIDE
	| SDLKeyKPMULTIPLY
	| SDLKeyKPMINUS
	| SDLKeyKPPLUS
	| SDLKeyKPENTER
	| SDLKeyKP1
	| SDLKeyKP2
	| SDLKeyKP3
	| SDLKeyKP4
	| SDLKeyKP5
	| SDLKeyKP6
	| SDLKeyKP7
	| SDLKeyKP8
	| SDLKeyKP9
	| SDLKeyKP0
	| SDLKeyKPPERIOD
	| SDLKeyAPPLICATION
	| SDLKeyPOWER
	| SDLKeyKPEQUALS
	| SDLKeyF13
	| SDLKeyF14
	| SDLKeyF15
	| SDLKeyF16
	| SDLKeyF17
	| SDLKeyF18
	| SDLKeyF19
	| SDLKeyF20
	| SDLKeyF21
	| SDLKeyF22
	| SDLKeyF23
	| SDLKeyF24
	| SDLKeyEXECUTE
	| SDLKeyHELP
	| SDLKeyMENU
	| SDLKeySELECT
	| SDLKeySTOP
	| SDLKeyAGAIN
	| SDLKeyUNDO
	| SDLKeyCUT
	| SDLKeyCOPY
	| SDLKeyPASTE
	| SDLKeyFIND
	| SDLKeyMUTE
	| SDLKeyVOLUMEUP
	| SDLKeyVOLUMEDOWN
	| SDLKeyKPCOMMA
	| SDLKeyKPEQUALSAS400
	| SDLKeyALTERASE
	| SDLKeySYSREQ
	| SDLKeyCANCEL
	| SDLKeyCLEAR
	| SDLKeyPRIOR
	| SDLKeyRETURN2
	| SDLKeySEPARATOR
	| SDLKeyOUT
	| SDLKeyOPER
	| SDLKeyCLEARAGAIN
	| SDLKeyCRSEL
	| SDLKeyEXSEL
	| SDLKeyKP00
	| SDLKeyKP000
	| SDLKeyTHOUSANDSSEPARATOR
	| SDLKeyDECIMALSEPARATOR
	| SDLKeyCURRENCYUNIT
	| SDLKeyCURRENCYSUBUNIT
	| SDLKeyKPLEFTPAREN
	| SDLKeyKPRIGHTPAREN
	| SDLKeyKPLEFTBRACE
	| SDLKeyKPRIGHTBRACE
	| SDLKeyKPTAB
	| SDLKeyKPBACKSPACE
	| SDLKeyKPA
	| SDLKeyKPB
	| SDLKeyKPC
	| SDLKeyKPD
	| SDLKeyKPE
	| SDLKeyKPF
	| SDLKeyKPXOR
	| SDLKeyKPPOWER
	| SDLKeyKPPERCENT
	| SDLKeyKPLESS
	| SDLKeyKPGREATER
	| SDLKeyKPAMPERSAND
	| SDLKeyKPDBLAMPERSAND
	| SDLKeyKPVERTICALBAR
	| SDLKeyKPDBLVERTICALBAR
	| SDLKeyKPCOLON
	| SDLKeyKPHASH
	| SDLKeyKPSPACE
	| SDLKeyKPAT
	| SDLKeyKPEXCLAM
	| SDLKeyKPMEMSTORE
	| SDLKeyKPMEMRECALL
	| SDLKeyKPMEMCLEAR
	| SDLKeyKPMEMADD
	| SDLKeyKPMEMSUBTRACT
	| SDLKeyKPMEMMULTIPLY
	| SDLKeyKPMEMDIVIDE
	| SDLKeyKPPLUSMINUS
	| SDLKeyKPCLEAR
	| SDLKeyKPCLEARENTRY
	| SDLKeyKPBINARY
	| SDLKeyKPOCTAL
	| SDLKeyKPDECIMAL
	| SDLKeyKPHEXADECIMAL
	| SDLKeyLCTRL
	| SDLKeyLSHIFT
	| SDLKeyLALT
	| SDLKeyLGUI
	| SDLKeyRCTRL
	| SDLKeyRSHIFT
	| SDLKeyRALT
	| SDLKeyRGUI
	| SDLKeyMODE
	| SDLKeyAUDIONEXT
	| SDLKeyAUDIOPREV
	| SDLKeyAUDIOSTOP
	| SDLKeyAUDIOPLAY
	| SDLKeyAUDIOMUTE
	| SDLKeyMEDIASELECT
	| SDLKeyWWW
	| SDLKeyMAIL
	| SDLKeyCALCULATOR
	| SDLKeyCOMPUTER
	| SDLKeyACSEARCH
	| SDLKeyACHOME
	| SDLKeyACBACK
	| SDLKeyACFORWARD
	| SDLKeyACSTOP
	| SDLKeyACREFRESH
	| SDLKeyACBOOKMARKS
	| SDLKeyBRIGHTNESSDOWN
	| SDLKeyBRIGHTNESSUP
	| SDLKeyDISPLAYSWITCH
	| SDLKeyKBDILLUMTOGGLE
	| SDLKeyKBDILLUMDOWN
	| SDLKeyKBDILLUMUP
	| SDLKeyEJECT
	| SDLKeySLEEP)
