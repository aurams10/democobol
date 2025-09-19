IDENTIFICATION DIVISION.
PROGRAM-ID. CALCULADORA-SIMPLE.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUMERO-UNO    PIC S9(5)V99 VALUE 0.
01 NUMERO-DOS    PIC S9(5)V99 VALUE 0.
01 RESULTADO     PIC S9(7)V99 VALUE 0.
01 OPERADOR      PIC X(1) VALUE SPACE.

PROCEDURE DIVISION.
    DISPLAY "Programa Calculadora Simple".

    DISPLAY "Introduce el primer número: ".
    ACCEPT NUMERO-UNO.

    DISPLAY "Introduce el operador (+, -, *, /): ".
    ACCEPT OPERADOR.

    DISPLAY "Introduce el segundo número: ".
    ACCEPT NUMERO-DOS.

    EVALUATE OPERADOR
        WHEN "+"
            COMPUTE RESULTADO = NUMERO-UNO + NUMERO-DOS
        WHEN "-"
            COMPUTE RESULTADO = NUMERO-UNO - NUMERO-DOS
        WHEN "*"
            COMPUTE RESULTADO = NUMERO-UNO * NUMERO-DOS
        WHEN "/"
            IF NUMERO-DOS NOT = 0
                COMPUTE RESULTADO = NUMERO-UNO / NUMERO-DOS
            ELSE
                DISPLAY "Error: División por cero."
            END-IF
        WHEN OTHER
            DISPLAY "Operador no válido."
    END-EVALUATE.

    IF OPERADOR IS NOT EQUAL TO "/" OR NUMERO-DOS IS NOT EQUAL TO 0
        DISPLAY "Resultado: ", RESULTADO
    END-IF.

    STOP RUN.