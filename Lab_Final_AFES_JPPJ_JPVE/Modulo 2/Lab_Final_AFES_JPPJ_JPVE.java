/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package lab_final_afes_jppj_jpve;

import java.util.Scanner;

public class Lab_Final_AFES_JPPJ_JPVE {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int opcion = 0;
        int salir = 0;

        int numero = 0;
        int digito = 0;
        int temporal = 0;
        int digitoActual = 0;
        int resultado = 0;
        int multiplicador = 1;
        int encontro = 0;

        int n = 0;
        int i = 0;
        int signo = 1;
        double sumaPi = 0;
        double pi = 0;
        double x = 0;
        double euler = 0;
        double termino = 0;
        double potencia = 1;
        double factorial = 1;
        int j = 0;

        int opcionTrig = 0;
        double grados = 0;
        double radianes = 0;
        double seno = 0;
        double coseno = 0;
        double tangente = 0;
        double cotangente = 0;
        double secante = 0;
        double cosecante = 0;
        double signoTermino = 1;
        int exponente = 0;
        int k = 0;

        String basura = "";

        while (salir == 0) {
            System.out.println("======================================");
            System.out.println("      MODULO 2 - HAPPYTECH");
            System.out.println("      PROCESOS MATEMATICOS");
            System.out.println("======================================");
            System.out.println("1. Eliminar un digito");
            System.out.println("2. Calculo de PI y EULER");
            System.out.println("3. Funciones trigonometricas con Taylor");
            System.out.println("4. Salir");
            System.out.print("Selecciona una opcion: ");

            if (entrada.hasNextInt()) {
                opcion = entrada.nextInt();
            } else {
                basura = entrada.next();
                opcion = 0;
            }

            if (opcion == 1) {
                System.out.println("\n--- ELIMINAR UN DIGITO ---");

                numero = 0;
                while (numero <= 1000) {
                    System.out.print("Ingresa un numero mayor de 1000: ");
                    if (entrada.hasNextInt()) {
                        numero = entrada.nextInt();
                        if (numero <= 1000) {
                            System.out.println("Error: el numero debe ser mayor de 1000.");
                        }
                    } else {
                        basura = entrada.next();
                        numero = 0;
                        System.out.println("Error: debes ingresar un numero entero.");
                    }
                }

                digito = -1;
                while (digito < 0 || digito > 9) {
                    System.out.print("Ingresa el digito que quieres eliminar del 0 al 9: ");
                    if (entrada.hasNextInt()) {
                        digito = entrada.nextInt();
                        if (digito < 0 || digito > 9) {
                            System.out.println("Error: el digito debe estar entre 0 y 9.");
                        }
                    } else {
                        basura = entrada.next();
                        digito = -1;
                        System.out.println("Error: debes ingresar un digito entero.");
                    }
                }

                temporal = numero;
                resultado = 0;
                multiplicador = 1;
                encontro = 0;

                while (temporal > 0) {
                    digitoActual = temporal % 10;

                    if (digitoActual == digito) {
                        encontro = 1;
                    } else {
                        resultado = resultado + digitoActual * multiplicador;
                        multiplicador = multiplicador * 10;
                    }

                    temporal = temporal / 10;
                }

                System.out.println("Numero original: " + numero);
                System.out.println("Digito eliminado: " + digito);

                if (encontro == 1) {
                    System.out.println("Resultado: " + resultado);
                } else {
                    System.out.println("El digito no aparece en el numero.");
                    System.out.println("Resultado: " + numero);
                }

                System.out.println();
            }

            if (opcion == 2) {
                System.out.println("\n--- CALCULO DE PI Y EULER ---");

                n = 0;
                while (n <= 0) {
                    System.out.print("Ingresa la cantidad de terminos para PI: ");
                    if (entrada.hasNextInt()) {
                        n = entrada.nextInt();
                        if (n <= 0) {
                            System.out.println("Error: N debe ser mayor que 0.");
                        }
                    } else {
                        basura = entrada.next();
                        n = 0;
                        System.out.println("Error: debes ingresar un entero.");
                    }
                }

                sumaPi = 0;
                signo = 1;
                i = 0;

                while (i < n) {
                    sumaPi = sumaPi + signo * (1.0 / (2 * i + 1));
                    signo = signo * -1;
                    i = i + 1;
                }

                pi = sumaPi * 4;

                System.out.print("Ingresa el valor de x para calcular e^x: ");
                while (!entrada.hasNextDouble()) {
                    basura = entrada.next();
                    System.out.print("Error. Ingresa un numero valido para x: ");
                }
                x = entrada.nextDouble();

                n = 0;
                while (n <= 0) {
                    System.out.print("Ingresa la cantidad de terminos para EULER: ");
                    if (entrada.hasNextInt()) {
                        n = entrada.nextInt();
                        if (n <= 0) {
                            System.out.println("Error: N debe ser mayor que 0.");
                        }
                    } else {
                        basura = entrada.next();
                        n = 0;
                        System.out.println("Error: debes ingresar un entero.");
                    }
                }

                euler = 0;
                i = 0;

                while (i < n) {
                    potencia = 1;
                    j = 1;
                    while (j <= i) {
                        potencia = potencia * x;
                        j = j + 1;
                    }

                    factorial = 1;
                    j = 1;
                    while (j <= i) {
                        factorial = factorial * j;
                        j = j + 1;
                    }

                    termino = potencia / factorial;
                    euler = euler + termino;
                    i = i + 1;
                }

                System.out.println("Aproximacion de PI con " + n + " terminos de Euler usados despues: " + pi);
                System.out.println("Aproximacion de e^" + x + ": " + euler);
                System.out.println();
            }

            if (opcion == 3) {
                System.out.println("\n--- FUNCIONES TRIGONOMETRICAS CON SERIES DE TAYLOR ---");
                System.out.println("1. Seno");
                System.out.println("2. Coseno");
                System.out.println("3. Tangente");
                System.out.println("4. Cotangente");
                System.out.println("5. Secante");
                System.out.println("6. Cosecante");
                System.out.print("Selecciona la funcion: ");

                if (entrada.hasNextInt()) {
                    opcionTrig = entrada.nextInt();
                } else {
                    basura = entrada.next();
                    opcionTrig = 0;
                }

                if (opcionTrig >= 1 && opcionTrig <= 6) {
                    System.out.print("Ingresa el angulo en grados: ");
                    while (!entrada.hasNextDouble()) {
                        basura = entrada.next();
                        System.out.print("Error. Ingresa un numero valido para grados: ");
                    }
                    grados = entrada.nextDouble();

                    n = 0;
                    while (n <= 0) {
                        System.out.print("Ingresa la cantidad de terminos de Taylor: ");
                        if (entrada.hasNextInt()) {
                            n = entrada.nextInt();
                            if (n <= 0) {
                                System.out.println("Error: N debe ser mayor que 0.");
                            }
                        } else {
                            basura = entrada.next();
                            n = 0;
                            System.out.println("Error: debes ingresar un entero.");
                        }
                    }

                    radianes = grados * 3.141592653589793 / 180.0;

                    seno = 0;
                    i = 0;
                    while (i < n) {
                        signoTermino = 1;
                        if (i % 2 == 1) {
                            signoTermino = -1;
                        }

                        exponente = 2 * i + 1;

                        potencia = 1;
                        k = 1;
                        while (k <= exponente) {
                            potencia = potencia * radianes;
                            k = k + 1;
                        }

                        factorial = 1;
                        k = 1;
                        while (k <= exponente) {
                            factorial = factorial * k;
                            k = k + 1;
                        }

                        seno = seno + signoTermino * potencia / factorial;
                        i = i + 1;
                    }

                    coseno = 0;
                    i = 0;
                    while (i < n) {
                        signoTermino = 1;
                        if (i % 2 == 1) {
                            signoTermino = -1;
                        }

                        exponente = 2 * i;

                        potencia = 1;
                        k = 1;
                        while (k <= exponente) {
                            potencia = potencia * radianes;
                            k = k + 1;
                        }

                        factorial = 1;
                        k = 1;
                        while (k <= exponente) {
                            factorial = factorial * k;
                            k = k + 1;
                        }

                        coseno = coseno + signoTermino * potencia / factorial;
                        i = i + 1;
                    }

                    if (opcionTrig == 1) {
                        System.out.println("sen(" + grados + ") = " + seno);
                    }

                    if (opcionTrig == 2) {
                        System.out.println("cos(" + grados + ") = " + coseno);
                    }

                    if (opcionTrig == 3) {
                        if (coseno < 0.000001 && coseno > -0.000001) {
                            System.out.println("tan(" + grados + ") = Indefinido");
                        } else {
                            tangente = seno / coseno;
                            System.out.println("tan(" + grados + ") = " + tangente);
                        }
                    }

                    if (opcionTrig == 4) {
                        if (seno < 0.000001 && seno > -0.000001) {
                            System.out.println("cot(" + grados + ") = Indefinido");
                        } else {
                            cotangente = coseno / seno;
                            System.out.println("cot(" + grados + ") = " + cotangente);
                        }
                    }

                    if (opcionTrig == 5) {
                        if (coseno < 0.000001 && coseno > -0.000001) {
                            System.out.println("sec(" + grados + ") = Indefinido");
                        } else {
                            secante = 1 / coseno;
                            System.out.println("sec(" + grados + ") = " + secante);
                        }
                    }

                    if (opcionTrig == 6) {
                        if (seno < 0.000001 && seno > -0.000001) {
                            System.out.println("csc(" + grados + ") = Indefinido");
                        } else {
                            cosecante = 1 / seno;
                            System.out.println("csc(" + grados + ") = " + cosecante);
                        }
                    }
                } else {
                    System.out.println("Opcion trigonometrica invalida.");
                }

                System.out.println();
            }

            if (opcion == 4) {
                salir = 1;
                System.out.println("Programa finalizado.");
            }

            if (opcion < 1 || opcion > 4) {
                System.out.println("Opcion invalida.\n");
            }
        }
    }
}
