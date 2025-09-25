      ******************************************************************        
      * DCLGEN TABLE(DB2PRD.TPSSOA_EVNTO_SIT)                          *        
      *        LIBRARY(AD.DB2.DCLGEN(CPLDB0B5))                        *        
      *        ACTION(REPLACE)                                         *        
      *        LANGUAGE(COBOL)                                         *        
      *        STRUCTURE(CPLDB0B5)                                     *        
      *        APOST                                                   *        
      *        LABEL(YES)                                              *        
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *        
      ******************************************************************        
           EXEC SQL DECLARE DB2PRD.TPSSOA_EVNTO_SIT TABLE                       
           ( CCNPJ_CPF                      DECIMAL(9, 0) NOT NULL,             
             CTPO_PSSOA                     CHAR(1) NOT NULL,                   
             NEVNTO_RTING                   DECIMAL(5, 0) NOT NULL,             
             NFAIXA_SIT_RTING               DECIMAL(5, 0) NOT NULL,             
             CPTCAO_TBELA                   DECIMAL(3, 0) NOT NULL,             
             CFLIAL_CNPJ                    DECIMAL(4, 0),                      
             CCTRL_CNPJ_CPF                 DECIMAL(2, 0),                      
             QPTO_PSSOA_RTING               DECIMAL(15, 2) NOT NULL,            
             HATULZ                         TIMESTAMP NOT NULL                  
           ) END-EXEC.                                                          
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE DB2PRD.TPSSOA_EVNTO_SIT            *        
      ******************************************************************        
       01  CPLDB0B5.                                                            
      *    *************************************************************        
           10 CCNPJ-CPF            PIC S9(9)V USAGE COMP-3.                     
      *    *************************************************************        
           10 CTPO-PSSOA           PIC X(1).                                    
      *    *************************************************************        
           10 NEVNTO-RTING         PIC S9(5)V USAGE COMP-3.                     
      *    *************************************************************        
           10 NFAIXA-SIT-RTING     PIC S9(5)V USAGE COMP-3.                     
      *    *************************************************************        
           10 CPTCAO-TBELA         PIC S9(3)V USAGE COMP-3.                     
      *    *************************************************************        
           10 CFLIAL-CNPJ          PIC S9(4)V USAGE COMP-3.                     
      *    *************************************************************        
           10 CCTRL-CNPJ-CPF       PIC S9(2)V USAGE COMP-3.                     
      *    *************************************************************        
           10 QPTO-PSSOA-RTING     PIC S9(13)V9(2) USAGE COMP-3.                
      *    *************************************************************        
           10 HATULZ               PIC X(26).                                   
      ******************************************************************        
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 9       *        
      ******************************************************************        
