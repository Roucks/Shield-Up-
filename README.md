# 🛡️ Shield Up! — Psicólogo Digital

> Consultorio escolar interactivo sobre bullying digital y bienestar emocional.

---



## 📖 Descripción

**Shield Up!** es un juego educativo interactivo desarrollado en Processing que simula un consultorio escolar de orientación psicológica. El jugador toma el rol de un orientador que debe atender casos reales de bullying digital, clasificar mensajes según su nivel de riesgo emocional y organizar redes de apoyo para los estudiantes.

El proyecto incluye además un **Módulo 2** en Java con herramientas de procesos matemáticos (cálculo de π, número de Euler, funciones trigonométricas por series de Taylor y manipulación de dígitos).

---

## 🎮 Modos de juego (Módulo 1 — Processing)

### 1. 🧠 Consulta clínica guiada
Escucha el caso de un paciente y elige la intervención correcta entre tres opciones:
- **Contención**: escucha activa y validación emocional.
- **Plan de apoyo**: evidencias, adulto seguro y seguimiento.
- **Protocolo**: valorar riesgo, proteger y derivar rápido.

12 rondas · Métricas de Empatía, Seguridad y Confianza · 30 casos posibles.

### 2. 🚦 Semáforo de señales emocionales
Clasifica frases recibidas por estudiantes según su nivel de riesgo:
- 🟢 **Verde**: apoyo, respeto o reparación.
- 🟡 **Amarillo**: duda, tensión o posible malentendido.
- 🔴 **Rojo**: agresión, presión, amenaza o humillación.

20 rondas · Barra de tiempo · Puntaje por velocidad de respuesta.

### 3. 🎲 Red de apoyo con dado
Modo multijugador (hasta 6 orientadores). Cada jugador lanza un dado para derivar casos a canales clínico-escolares con capacidad limitada:

| Canal | Tipo | Capacidad |
|---|---|---|
| 1 | Escucha | 1 caso |
| 2 | Familia | 2 casos |
| 3 | Aula | 3 casos |
| 4 | Mediación | 4 casos |
| 5 | Seguimiento | 5 casos |
| 6 | Crisis | ∞ (no colapsa) |

Si un canal colapsa, los casos regresan al orientador que lanzó. Gana quien quede sin casos.

### 4. 📋 Práctica de agenda clínica
Entrena rutas reales de atención derivando cada caso al servicio correcto:
- **Sala calma**: regulación emocional (máx. 4 casos).
- **Familia**: adulto seguro y acompañamiento (máx. 3 casos).
- **Colegio**: convivencia y mediación escolar (máx. 5 casos).
- **Urgencias digitales**: amenaza, chantaje o exposición (máx. 2 casos).

12 rondas · Saturar servicios penaliza el puntaje.

---

## ⌨️ Controles

| Tecla | Acción |
|---|---|
| `1` / `2` / `3` / `4` | Seleccionar opción / intervención |
| `E` | Iniciar modo de juego |
| `M` | Volver al menú principal |
| `P` | Abrir instrucciones en pantalla |
| `C` | Cerrar panel de instrucciones |
| `L` | Lanzar dado (modo Red de apoyo) |
| `S` | Pasar turno (modo Red de apoyo) |
| `+` | Agregar jugador (modo Red de apoyo) |
| `Enter` | Confirmar nombre en pantalla inicial |
| `Backspace` | Borrar letra del nombre |

---

## 🧮 Módulo 2 — Procesos Matemáticos (Java)

Aplicación de consola con cuatro utilidades numéricas:

1. **Eliminar un dígito**: recibe un número mayor a 1000 y elimina un dígito específico.
2. **Cálculo de π y e**: aproxima el número de Pi (serie de Leibniz) y el número de Euler mediante series matemáticas.
3. **Funciones trigonométricas con Taylor**: calcula seno, coseno, tangente, cotangente, secante y cosecante usando series de Taylor.
4. **Salir**.

---

## 🗂️ Estructura del proyecto
Lab_Final_AFES_JPPJ_JPVE/
├── Modulo 1/
|
│   ├── Lab_Final_AFES_JPPJ_JPVE.pde   ← Juego principal en Processing
|
│   └── sketch.properties
|
└── Modulo 2/
└── Lab_Final_AFES_JPPJ_JPVE.java  ← Módulo matemático en Java

---

## 🚀 Cómo ejecutar

### Módulo 1 — Processing
1. Descarga e instala [Processing](https://processing.org/download).
2. Abre `Modulo 1/Lab_Final_AFES_JPPJ_JPVE.pde` desde el IDE de Processing.
3. Presiona el botón ▶ **Run** o `Ctrl + R`.
4. La ventana se ajusta automáticamente al tamaño de tu pantalla.

### Módulo 2 — Java
1. Abre el proyecto en tu IDE favorito (NetBeans, IntelliJ, Eclipse, etc.).
2. Ejecuta la clase `Lab_Final_AFES_JPPJ_JPVE` como aplicación Java.
3. Sigue las instrucciones del menú en la consola.

---

## 👥 Autores

Proyecto desarrollado como laboratorio final por:

- **AFES**
- **JPPJ**
- **JPVE**

---

## 📚 Contexto académico

Este proyecto fue desarrollado como laboratorio final de curso. El módulo interactivo aborda competencias en orientación escolar, detección de señales de bullying digital y toma de decisiones clínicas en entornos educativos.

---

## 📄 Licencia

Este proyecto es de uso académico. Todos los derechos reservados a los autores.<img width="1920" height="1080" alt="Captura de pantalla 2026-05-27 063346" src="https://github.com/user-attachments/assets/93f0f2ed-f20a-49a6-b8bf-ec3a86fd64a0" />
