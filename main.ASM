//Se lee la temperatura
//La compara con el umbral mayor y menor
// Solicita la temperatura
    TEMP MOV R1, #22
    OUT R1
//Lee la temperatura
    INP R2
//Define el umbral
    MOV R3, #100
    MOV R4, #90
//Compara la temperatura
    CMP R2, R3
//Salta a TEMP ALTA
    BGT TEMP ALTA
//Compara y salta a temperatura baja
    CMP R2, R4 
    BLT TEMP_BAJA 
    BRA DONE
//Si la temperatura es muy alta el termostato se abre
    TEMP_ALTA MOV R1, #21
    MOV R5, #1
    OUT R1
    OUT R5
    BRA TEMP
//Si la temperatura es muy baja, el termostato se cierra
    TEMP_BAJA MOV R1, #20
    MOV R5, #0
    OUT R1
    OUT R5
    BRA TEMP
    DONE MOV R6, #25
    OUT R6
    HLT
//código #22 mide la temperatura
//código #21 indica que la temperatura es muy alta
//la salida #1 indica que el sistema de enfriamiento está encendido
//código #20 indica que la temperatura es muy baja 
//la salida #O indica que el sistema de enfriamiento está apagado
//código #25 indica que la temperatura está un nivel normal