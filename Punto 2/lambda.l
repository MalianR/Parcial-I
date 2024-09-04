%{
#include <stdio.h>
#include <stdlib.h>

// Variables globales para verificar si se encontraron las palabras clave "lambda" y "print".
int lambda_found = 0;
int print_found = 0;
%}

%%

// Regla para detectar la palabra clave "lambda" y establecer la variable correspondiente.
"lambda"         { lambda_found = 1; }

// Regla para detectar la palabra clave "print" y establecer la variable correspondiente.
"print"          { print_found = 1; }

// Regla para detectar identificadores, que son nombres de variables o funciones.
[a-zA-Z_][a-zA-Z0-9_]*   { /* Identificador */ }

// Regla para detectar números enteros.
[0-9]+           { /* Número */ }

// Regla para detectar el operador de potencia (*).
"*"              { /* Operador de potencia */ }

// Regla para detectar el operador de asignación (=).
"="              { /* Operador de asignación */ }

// Regla para detectar dos puntos (:).
":"              { /* Dos puntos */ }

// Regla para detectar paréntesis izquierdo (().
"("              { /* Paréntesis izquierdo */ }

// Regla para detectar paréntesis derecho ()).
")"              { /* Paréntesis derecho */ }

// Regla para ignorar espacios, tabulaciones y saltos de línea.
[ \t\n]+         { /* Ignorar espacios, tabulaciones y saltos de línea */ }

// Regla para ignorar cualquier otro carácter que no coincida con las reglas anteriores.
.                { /* Ignorar todo lo demás */ }

%%

int main(int argc, char **argv) {
    // Verificar que se haya pasado el nombre del archivo como argumento.
    if (argc < 2) {
        fprintf(stderr, "Uso: %s <archivo>\n", argv[0]);
        return 1;
    }

    // Abrir el archivo especificado en el argumento de línea de comandos.
    FILE *file = fopen(argv[1], "r");
    if (!file) {
        fprintf(stderr, "Error al abrir el archivo %s\n", argv[1]);
        return 1;
    }

    // Establecer el archivo de entrada para el análisis léxico.
    yyin = file;

    // Ejecutar el análisis léxico sobre el archivo de entrada.
    yylex();

    // Verificar si se encontraron las palabras clave "lambda" y "print".
    if (lambda_found && print_found) {
        printf("ACEPTA\n");
    } else {
        printf("NO ACEPTA\n");
    }

    // Cerrar el archivo.
    fclose(file);
    return 0;
}

