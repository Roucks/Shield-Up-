int iniciado = 0;
int pantalla = 0;
int click = 0;
int tecla = 0;
int esc = 1;
int i = 0;
int sx = 0;
int sy = 0;
int bx = 0;
int by = 0;
int bw = 0;
int bh = 0;
int puntos = 0;
int ronda = 1;
int errores = 0;
int ayuda = 0;
int caso = 1;
int correcta = 1;
int riesgo = 0;
int intensidad = 0;
int empatia = 5;
int seguridad = 5;
int confianza = 5;
int tiempo = 0;
int limite = 360;
int base = 10;
int bonus = 0;
int ganado = 0;
int consultorioCalma = 0;
int familia = 0;
int colegio = 0;
int emergencia = 0;
int colapsos = 0;
int jugadores = 2;
int turno = 1;
int dado = 0;
int ganador = 0;
int canal1 = 0;
int canal2 = 0;
int canal3 = 0;
int canal4 = 0;
int canal5 = 0;
int canal6 = 0;
int j1 = 5;
int j2 = 5;
int j3 = 5;
int j4 = 5;
int j5 = 5;
int j6 = 5;
int practica = 0;
String nombre = "";
String paciente = "";
String casoTexto = "";
String emocion = "";
String retro = "";
String finalTitulo = "";
String finalMensaje = "";
String finalReflexion = "";
String sala = "";

void draw() {
  if (iniciado == 0) {
    surface.setResizable(true);
    surface.setLocation(0, 0);
    surface.setSize(displayWidth, displayHeight);
    textAlign(LEFT, BASELINE);
    smooth();
    iniciado = 1;
  }

  esc = width;
  if (height < width) {
    esc = height;
  }

  if (mousePressed == false) {
    click = 0;
  }
  if (keyPressed == false) {
    tecla = 0;
  }

  background(224, 214, 196);
  noStroke();
  fill(232, 221, 202);
  rect(0, 0, width, height * 70 / 100);
  fill(108, 82, 72);
  rect(0, height * 70 / 100, width, height * 30 / 100);
  fill(92, 68, 60);
  i = 0;
  while (i < 18) {
    rect(i * width / 18, height * 70 / 100, width / 40, height * 30 / 100);
    i = i + 1;
  }

  stroke(86, 126, 145);
  strokeWeight(esc * 5 / 1000);
  fill(180, 224, 232);
  rect(width * 7 / 100, height * 8 / 100, width * 18 / 100, height * 21 / 100, esc * 8 / 1000);
  line(width * 16 / 100, height * 8 / 100, width * 16 / 100, height * 29 / 100);
  line(width * 7 / 100, height * 185 / 1000, width * 25 / 100, height * 185 / 1000);
  noStroke();
  fill(250, 245, 220);
  ellipse(width * 21 / 100, height * 12 / 100, esc * 34 / 1000, esc * 34 / 1000);

  fill(64, 125, 91);
  rect(width * 85 / 100, height * 53 / 100, width * 6 / 100, height * 15 / 100, esc * 10 / 1000);
  fill(43, 142, 78);
  ellipse(width * 86 / 100, height * 48 / 100, esc * 60 / 1000, esc * 78 / 1000);
  ellipse(width * 90 / 100, height * 47 / 100, esc * 58 / 1000, esc * 80 / 1000);
  fill(98, 64, 48);
  rect(width * 84 / 100, height * 67 / 100, width * 9 / 100, height * 4 / 100, esc * 8 / 1000);

  fill(80, 120, 160);
  rect(width * 10 / 100, height * 57 / 100, width * 24 / 100, height * 12 / 100, esc * 18 / 1000);
  fill(68, 102, 142);
  rect(width * 12 / 100, height * 52 / 100, width * 20 / 100, height * 11 / 100, esc * 18 / 1000);
  fill(244, 216, 130);
  ellipse(width * 15 / 100, height * 55 / 100, esc * 50 / 1000, esc * 36 / 1000);
  ellipse(width * 28 / 100, height * 55 / 100, esc * 50 / 1000, esc * 36 / 1000);

  fill(90, 66, 52);
  rect(width * 63 / 100, height * 57 / 100, width * 20 / 100, height * 5 / 100, esc * 8 / 1000);
  rect(width * 65 / 100, height * 62 / 100, width * 3 / 100, height * 10 / 100);
  rect(width * 78 / 100, height * 62 / 100, width * 3 / 100, height * 10 / 100);
  fill(245, 245, 240);
  rect(width * 70 / 100, height * 50 / 100, width * 7 / 100, height * 8 / 100, esc * 4 / 1000);

  if (pantalla == 0) {
    fill(42, 35, 45, 210);
    rect(width * 28 / 100, height * 18 / 100, width * 44 / 100, height * 50 / 100, esc * 18 / 1000);
    stroke(255);
    strokeWeight(esc * 3 / 1000);
    noFill();
    rect(width * 30 / 100, height * 21 / 100, width * 40 / 100, height * 44 / 100, esc * 12 / 1000);
    noStroke();
    textAlign(CENTER, BASELINE);
    fill(255);
    textSize(esc * 52 / 1000);
    text("Psicólogo Digital", width * 50 / 100, height * 30 / 100);
    textSize(esc * 23 / 1000);
    text("Bienvenido al consultorio interactivo", width * 50 / 100, height * 37 / 100);
    fill(232, 245, 255);
    rect(width * 35 / 100, height * 44 / 100, width * 30 / 100, height * 8 / 100, esc * 8 / 1000);
    fill(40, 40, 55);
    textSize(esc * 30 / 1000);
    text(nombre, width * 50 / 100, height * 495 / 1000);
    fill(255);
    textSize(esc * 22 / 1000);
    text("Escribe tu nombre y presiona ENTER", width * 50 / 100, height * 58 / 100);
    text("Backspace borra letras", width * 50 / 100, height * 63 / 100);
    textAlign(LEFT, BASELINE);

    if (keyPressed == true && tecla == 0) {
      if (key == BACKSPACE && nombre.length() > 0) {
        nombre = nombre.substring(0, nombre.length() - 1);
      }
      if (key == ENTER && nombre.length() > 0) {
        pantalla = 1;
      }
      if (nombre.length() < 14) {
        if (key >= 'a' && key <= 'z') { nombre = nombre + key; }
        if (key >= 'A' && key <= 'Z') { nombre = nombre + key; }
        if (key >= '0' && key <= '9') { nombre = nombre + key; }
        if (key == ' ') { nombre = nombre + " "; }
      }
      tecla = 1;
    }
  }

  if (pantalla == 1) {
    fill(255, 252, 244);
    rect(width * 29 / 100, height * 10 / 100, width * 42 / 100, height * 9 / 100, esc * 10 / 1000);
    fill(65, 55, 60);
    textAlign(CENTER, BASELINE);
    textSize(esc * 47 / 1000);
    text("Psicólogo Digital", width * 50 / 100, height * 175 / 1000);
    textSize(esc * 21 / 1000);
    text("Consultorio escolar interactivo de " + nombre, width * 50 / 100, height * 24 / 100);
    textAlign(LEFT, BASELINE);

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 28 / 100, height * 28 / 100, width * 44 / 100, height * 9 / 100, esc * 14 / 1000);
    rect(width * 28 / 100, height * 40 / 100, width * 44 / 100, height * 9 / 100, esc * 14 / 1000);
    rect(width * 28 / 100, height * 52 / 100, width * 44 / 100, height * 9 / 100, esc * 14 / 1000);
    rect(width * 28 / 100, height * 64 / 100, width * 44 / 100, height * 9 / 100, esc * 14 / 1000);
    noStroke();
    fill(88, 67, 82);
    textSize(esc * 27 / 1000);
    text("1  Consulta clínica guiada", width * 32 / 100, height * 335 / 1000);
    text("2  Semáforo de señales", width * 32 / 100, height * 455 / 1000);
    text("3  Red de apoyo con dado", width * 32 / 100, height * 575 / 1000);
    text("4  Modo práctica: agenda clínica", width * 32 / 100, height * 695 / 1000);
    fill(120, 110, 110);
    textSize(esc * 15 / 1000);
    text("Validar, preguntar riesgo y elegir una intervención simple.", width * 32 / 100, height * 36 / 100);
    text("Clasifica frases según apoyo, tensión o alerta.", width * 32 / 100, height * 48 / 100);
    text("Varios orientadores asignan casos a canales usando un dado.", width * 32 / 100, height * 60 / 100);
    text("Entrena rutas de ayuda: calma, familia, colegio y urgencia.", width * 32 / 100, height * 72 / 100);

    fill(80, 120, 160);
    ellipse(width * 24 / 100, height * 325 / 1000, esc * 26 / 1000, esc * 26 / 1000);
    fill(244, 184, 84);
    ellipse(width * 24 / 100, height * 445 / 1000, esc * 26 / 1000, esc * 26 / 1000);
    fill(120, 170, 98);
    ellipse(width * 24 / 100, height * 565 / 1000, esc * 26 / 1000, esc * 26 / 1000);
    fill(170, 105, 125);
    ellipse(width * 24 / 100, height * 685 / 1000, esc * 26 / 1000, esc * 26 / 1000);

    if (mousePressed == true && click == 0) {
      if (mouseX > width * 28 / 100 && mouseX < width * 72 / 100 && mouseY > height * 28 / 100 && mouseY < height * 37 / 100) {
        pantalla = 10; ronda = 1; puntos = 0; errores = 0; empatia = 5; seguridad = 5; confianza = 5; caso = int(random(1, 31)); retro = ""; ayuda = 0;
      }
      if (mouseX > width * 28 / 100 && mouseX < width * 72 / 100 && mouseY > height * 40 / 100 && mouseY < height * 49 / 100) {
        pantalla = 20; ronda = 1; puntos = 0; errores = 0; tiempo = 0; limite = 360; caso = int(random(1, 31)); retro = ""; ayuda = 0;
      }
      if (mouseX > width * 28 / 100 && mouseX < width * 72 / 100 && mouseY > height * 52 / 100 && mouseY < height * 61 / 100) {
        pantalla = 30; jugadores = 2; turno = 1; dado = 0; ganador = 0; canal1 = 0; canal2 = 0; canal3 = 0; canal4 = 0; canal5 = 0; canal6 = 0; j1 = 5; j2 = 5; j3 = 5; j4 = 5; j5 = 5; j6 = 5; puntos = 0; colapsos = 0; retro = ""; ayuda = 0;
      }
      if (mouseX > width * 28 / 100 && mouseX < width * 72 / 100 && mouseY > height * 64 / 100 && mouseY < height * 73 / 100) {
        pantalla = 40; ronda = 1; puntos = 0; errores = 0; consultorioCalma = 0; familia = 0; colegio = 0; emergencia = 0; colapsos = 0; caso = int(random(1, 21)); retro = ""; ayuda = 0;
      }
      click = 1;
    }
    if (keyPressed == true && tecla == 0) {
      if (key == '1') { pantalla = 10; ronda = 1; puntos = 0; errores = 0; empatia = 5; seguridad = 5; confianza = 5; caso = int(random(1, 31)); retro = ""; ayuda = 0; }
      if (key == '2') { pantalla = 20; ronda = 1; puntos = 0; errores = 0; tiempo = 0; limite = 360; caso = int(random(1, 31)); retro = ""; ayuda = 0; }
      if (key == '3') { pantalla = 30; jugadores = 2; turno = 1; dado = 0; ganador = 0; canal1 = 0; canal2 = 0; canal3 = 0; canal4 = 0; canal5 = 0; canal6 = 0; j1 = 5; j2 = 5; j3 = 5; j4 = 5; j5 = 5; j6 = 5; puntos = 0; colapsos = 0; retro = ""; ayuda = 0; }
      if (key == '4') { pantalla = 40; ronda = 1; puntos = 0; errores = 0; consultorioCalma = 0; familia = 0; colegio = 0; emergencia = 0; colapsos = 0; caso = int(random(1, 21)); retro = ""; ayuda = 0; }
      tecla = 1;
    }
  }

  if (pantalla == 10) {
    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 18 / 100, height * 18 / 100, width * 64 / 100, height * 48 / 100, esc * 16 / 1000);
    noStroke();
    fill(55, 48, 58);
    textSize(esc * 40 / 1000);
    text("Tutorial: Consulta guiada", width * 23 / 100, height * 27 / 100);
    textSize(esc * 23 / 1000);
    text("Escucha el caso del paciente y elige una intervención.", width * 23 / 100, height * 36 / 100);
    text("1 Contención: escucha activa, validar emoción y respirar.", width * 25 / 100, height * 43 / 100);
    text("2 Plan de apoyo: evidencias, adulto seguro y seguimiento.", width * 25 / 100, height * 49 / 100);
    text("3 Protocolo: valorar riesgo, proteger y derivar rápido.", width * 25 / 100, height * 55 / 100);
    text("P abre instrucciones durante el juego. M vuelve al menú.", width * 23 / 100, height * 62 / 100);
    text("Presiona E para iniciar.", width * 23 / 100, height * 72 / 100);
    if (keyPressed == true && tecla == 0) {
      if (key == 'e' || key == 'E') { pantalla = 11; }
      if (key == 'm' || key == 'M') { pantalla = 1; }
      tecla = 1;
    }
  }

  if (pantalla == 20) {
    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 18 / 100, height * 18 / 100, width * 64 / 100, height * 48 / 100, esc * 16 / 1000);
    noStroke();
    fill(55, 48, 58);
    textSize(esc * 40 / 1000);
    text("Tutorial: Semáforo emocional", width * 23 / 100, height * 27 / 100);
    textSize(esc * 23 / 1000);
    text("Clasifica frases según su nivel de cuidado.", width * 23 / 100, height * 36 / 100);
    text("1 Verde: apoyo, respeto o reparación.", width * 25 / 100, height * 43 / 100);
    text("2 Amarillo: duda, tensión o posible malentendido.", width * 25 / 100, height * 49 / 100);
    text("3 Rojo: agresión, presión, amenaza o humillación.", width * 25 / 100, height * 55 / 100);
    text("La barra se agota. Responder rápido da mejor puntaje.", width * 23 / 100, height * 62 / 100);
    text("Presiona E para iniciar.", width * 23 / 100, height * 72 / 100);
    if (keyPressed == true && tecla == 0) {
      if (key == 'e' || key == 'E') { pantalla = 21; tiempo = 0; }
      if (key == 'm' || key == 'M') { pantalla = 1; }
      tecla = 1;
    }
  }

  if (pantalla == 30) {
    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 16 / 100, height * 17 / 100, width * 68 / 100, height * 56 / 100, esc * 16 / 1000);
    noStroke();
    fill(55, 48, 58);
    textSize(esc * 38 / 1000);
    text("Tutorial: Red de apoyo con dado", width * 21 / 100, height * 26 / 100);
    textSize(esc * 22 / 1000);
    text("Este modo sigue la guía: varios orientadores y un dado de 1 a 6.", width * 21 / 100, height * 35 / 100);
    text("Cada jugador inicia con 5 casos de bullying digital por gestionar.", width * 21 / 100, height * 41 / 100);
    text("L lanza el dado. El número indica el canal al que entra un caso.", width * 21 / 100, height * 47 / 100);
    text("Canales 1 a 5 tienen capacidad limitada. Canal 6 nunca colapsa.", width * 21 / 100, height * 53 / 100);
    text("Si un canal lleno recibe un caso, colapsa y esos casos vuelven al jugador.", width * 21 / 100, height * 59 / 100);
    text("+ agrega jugadores hasta 6. S pasa turno. P abre instrucciones.", width * 21 / 100, height * 65 / 100);
    text("Presiona E para iniciar o M para volver al menú.", width * 21 / 100, height * 82 / 100);
    if (keyPressed == true && tecla == 0) {
      if (key == 'e' || key == 'E') { pantalla = 31; }
      if (key == 'm' || key == 'M') { pantalla = 1; }
      tecla = 1;
    }
  }

  if (pantalla == 40) {
    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 18 / 100, height * 18 / 100, width * 64 / 100, height * 50 / 100, esc * 16 / 1000);
    noStroke();
    fill(55, 48, 58);
    textSize(esc * 38 / 1000);
    text("Tutorial: Práctica de agenda clínica", width * 22 / 100, height * 27 / 100);
    textSize(esc * 22 / 1000);
    text("Este modo practica rutas reales de atención de forma sencilla.", width * 22 / 100, height * 36 / 100);
    text("1 Sala calma: respiración, validación y regulación emocional.", width * 24 / 100, height * 43 / 100);
    text("2 Familia: adulto seguro, acompañamiento y evidencias.", width * 24 / 100, height * 49 / 100);
    text("3 Colegio: convivencia, mediación y seguimiento escolar.", width * 24 / 100, height * 55 / 100);
    text("4 Urgencias digitales: amenaza, chantaje o datos privados.", width * 24 / 100, height * 61 / 100);
    text("Presiona E para iniciar o M para volver al menú.", width * 22 / 100, height * 75 / 100);
    if (keyPressed == true && tecla == 0) {
      if (key == 'e' || key == 'E') { pantalla = 41; }
      if (key == 'm' || key == 'M') { pantalla = 1; }
      tecla = 1;
    }
  }

  if (pantalla == 11) {
    if (caso == 1) {
      paciente = "Sofía";
      casoTexto = "Hoy en el grupo de clase dejaron de responderme cuando pedí ayuda.";
      emocion = "Tristeza silenciosa";
      correcta = 1;
      riesgo = 2;
      intensidad = 3;
    }
    if (caso == 2) {
      paciente = "Mateo";
      casoTexto = "Un compañero sube stickers míos cada vez que escribo algo.";
      emocion = "Vergüenza";
      correcta = 2;
      riesgo = 6;
      intensidad = 2;
    }
    if (caso == 3) {
      paciente = "Valeria";
      casoTexto = "Me dijeron que si no mando una foto dejarán de hablarme.";
      emocion = "Miedo";
      correcta = 3;
      riesgo = 9;
      intensidad = 3;
    }
    if (caso == 4) {
      paciente = "Juan";
      casoTexto = "Pregunté una cosa y me respondieron con muchos emojis de burla.";
      emocion = "Incomodidad";
      correcta = 2;
      riesgo = 5;
      intensidad = 2;
    }
    if (caso == 5) {
      paciente = "Camila";
      casoTexto = "Una amiga me escribió: no fue mi intención hacerte sentir mal.";
      emocion = "Duda";
      correcta = 1;
      riesgo = 2;
      intensidad = 1;
    }
    if (caso == 6) {
      paciente = "Samuel";
      casoTexto = "Crearon un chat para votar quién cae peor del salón.";
      emocion = "Ansiedad";
      correcta = 3;
      riesgo = 8;
      intensidad = 3;
    }
    if (caso == 7) {
      paciente = "Lucía";
      casoTexto = "Me corrigieron fuerte, pero luego me explicaron con respeto.";
      emocion = "Confusión";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }
    if (caso == 8) {
      paciente = "Andrés";
      casoTexto = "Todos los días me cambian el apodo en el grupo.";
      emocion = "Rabia";
      correcta = 2;
      riesgo = 6;
      intensidad = 2;
    }
    if (caso == 9) {
      paciente = "Daniela";
      casoTexto = "Alguien publicó una captura privada y ahora se ríen.";
      emocion = "Exposición";
      correcta = 3;
      riesgo = 10;
      intensidad = 3;
    }
    if (caso == 10) {
      paciente = "Nicolás";
      casoTexto = "Me dijeron que mi opinión era rara, pero no hubo insultos.";
      emocion = "Duda";
      correcta = 1;
      riesgo = 2;
      intensidad = 1;
    }
    if (caso == 11) {
      paciente = "Mariana";
      casoTexto = "Cada vez que participo me mandan audios imitando mi voz.";
      emocion = "Humillación";
      correcta = 2;
      riesgo = 7;
      intensidad = 2;
    }
    if (caso == 12) {
      paciente = "Emilio";
      casoTexto = "Un usuario anónimo escribió que sabe dónde estudio.";
      emocion = "Alarma";
      correcta = 3;
      riesgo = 10;
      intensidad = 3;
    }
    if (caso == 13) {
      paciente = "Isabella";
      casoTexto = "Me dejaron en visto, pero no sé si fue a propósito.";
      emocion = "Incertidumbre";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }
    if (caso == 14) {
      paciente = "Gabriel";
      casoTexto = "Hicieron una lista de personas que nadie debe invitar.";
      emocion = "Exclusión";
      correcta = 2;
      riesgo = 6;
      intensidad = 2;
    }
    if (caso == 15) {
      paciente = "Sara";
      casoTexto = "Me amenazaron con publicar una conversación vieja.";
      emocion = "Temor";
      correcta = 3;
      riesgo = 9;
      intensidad = 3;
    }
    if (caso == 16) {
      paciente = "Tomás";
      casoTexto = "Me dijeron que mi dibujo podía mejorar y me dieron consejos.";
      emocion = "Calma";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }
    if (caso == 17) {
      paciente = "Paula";
      casoTexto = "Me mandan el mismo meme ofensivo desde hace varios días.";
      emocion = "Cansancio";
      correcta = 2;
      riesgo = 6;
      intensidad = 2;
    }
    if (caso == 18) {
      paciente = "David";
      casoTexto = "Si hablas con el profe, todos sabrán tus secretos.";
      emocion = "Presión";
      correcta = 3;
      riesgo = 9;
      intensidad = 3;
    }
    if (caso == 19) {
      paciente = "Antonia";
      casoTexto = "Me preguntaron si estaba bien después de una discusión.";
      emocion = "Alivio";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }
    if (caso == 20) {
      paciente = "Felipe";
      casoTexto = "En una transmisión comenzaron a burlarse de mi acento.";
      emocion = "Vergüenza";
      correcta = 2;
      riesgo = 7;
      intensidad = 2;
    }
    if (caso == 21) {
      paciente = "Renata";
      casoTexto = "Me escribieron: no mereces estar en este equipo.";
      emocion = "Dolor";
      correcta = 2;
      riesgo = 6;
      intensidad = 2;
    }
    if (caso == 22) {
      paciente = "Sebastián";
      casoTexto = "Un compañero pide disculpas y propone hablar mañana.";
      emocion = "Esperanza";
      correcta = 1;
      riesgo = 2;
      intensidad = 1;
    }
    if (caso == 23) {
      paciente = "Laura";
      casoTexto = "Me dijeron que iban a arruinar mi perfil con rumores.";
      emocion = "Miedo";
      correcta = 3;
      riesgo = 9;
      intensidad = 3;
    }
    if (caso == 24) {
      paciente = "Diego";
      casoTexto = "No entendieron mi mensaje y pidieron contexto.";
      emocion = "Neutralidad";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }
    if (caso == 25) {
      paciente = "Elena";
      casoTexto = "Me etiquetan en publicaciones donde me ridiculizan.";
      emocion = "Ansiedad";
      correcta = 2;
      riesgo = 7;
      intensidad = 2;
    }
    if (caso == 26) {
      paciente = "Bruno";
      casoTexto = "Un grupo comparte mi número para molestarme.";
      emocion = "Riesgo";
      correcta = 3;
      riesgo = 10;
      intensidad = 3;
    }
    if (caso == 27) {
      paciente = "Martina";
      casoTexto = "Me dijeron que mi respuesta no era clara.";
      emocion = "Duda leve";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }
    if (caso == 28) {
      paciente = "Álvaro";
      casoTexto = "Me sacan de los grupos y luego dicen que fue broma.";
      emocion = "Soledad";
      correcta = 2;
      riesgo = 6;
      intensidad = 2;
    }
    if (caso == 29) {
      paciente = "Clara";
      casoTexto = "Si no haces lo que digo, mostraré tus fotos.";
      emocion = "Amenaza";
      correcta = 3;
      riesgo = 10;
      intensidad = 3;
    }
    if (caso == 30) {
      paciente = "Iván";
      casoTexto = "Me invitaron a resolver el problema con mediación.";
      emocion = "Confianza";
      correcta = 1;
      riesgo = 1;
      intensidad = 1;
    }

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 9 / 100, height * 13 / 100, width * 82 / 100, height * 50 / 100, esc * 18 / 1000);
    noStroke();
    fill(60, 52, 60);
    textSize(esc * 38 / 1000);
    text("Consulta guiada", width * 13 / 100, height * 21 / 100);
    textSize(esc * 20 / 1000);
    text("Paciente: " + paciente + "     Ronda: " + ronda + "/12     Puntos: " + puntos, width * 13 / 100, height * 27 / 100);
    text("Empatía: " + empatia + "   Seguridad: " + seguridad + "   Confianza: " + confianza, width * 13 / 100, height * 315 / 1000);
    fill(92, 70, 88);
    textSize(esc * 25 / 1000);
    text("Caso:", width * 13 / 100, height * 39 / 100);
    fill(40, 40, 46);
    textSize(esc * 27 / 1000);
    text(casoTexto, width * 13 / 100, height * 45 / 100);
    textSize(esc * 20 / 1000);
    text("Emoción observada: " + emocion + "     Intensidad: " + intensidad + "     Riesgo: " + riesgo, width * 13 / 100, height * 52 / 100);
    fill(70, 105, 145);
    rect(width * 13 / 100, height * 555 / 1000, width * riesgo * 4 / 100, height * 2 / 100, esc * 4 / 1000);
    fill(60, 52, 60);
    textSize(esc * 18 / 1000);
    text("Barra de riesgo clínico del caso", width * 13 / 100, height * 59 / 100);

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 10 / 100, height * 67 / 100, width * 24 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 38 / 100, height * 67 / 100, width * 24 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 66 / 100, height * 67 / 100, width * 24 / 100, height * 9 / 100, esc * 12 / 1000);
    noStroke();
    fill(65, 55, 60);
    textSize(esc * 23 / 1000);
    text("1 Contención", width * 12 / 100, height * 725 / 1000);
    text("2 Plan de apoyo", width * 40 / 100, height * 725 / 1000);
    text("3 Protocolo", width * 68 / 100, height * 725 / 1000);
    textSize(esc * 20 / 1000);
    text(retro, width * 10 / 100, height * 83 / 100);
    text("P instrucciones    M menú", width * 10 / 100, height * 90 / 100);

    if (keyPressed == true && tecla == 0) {
      if (key == 'p' || key == 'P') { ayuda = 1; }
      if (ayuda == 0) {
        if (key == 'm' || key == 'M') { pantalla = 1; }
        if (key == '1' || key == '2' || key == '3') {
          if (key == '1' && correcta == 1) { puntos = puntos + 12; empatia = empatia + 1; confianza = confianza + 1; retro = "Escucha activa correcta: validaste la emoción antes de aconsejar."; }
          if (key == '2' && correcta == 2) { puntos = puntos + 12; seguridad = seguridad + 1; confianza = confianza + 1; retro = "Buen plan: guardaste evidencias y conectaste un adulto seguro."; }
          if (key == '3' && correcta == 3) { puntos = puntos + 12; seguridad = seguridad + 2; retro = "Protocolo correcto: ante riesgo alto, primero va la seguridad."; }
          if (key == '1' && correcta != 1) { puntos = puntos - 4; errores = errores + 1; seguridad = seguridad - 1; retro = "Faltó valorar riesgo: escuchar ayuda, pero aquí hacía falta más protección."; }
          if (key == '2' && correcta != 2) { puntos = puntos - 4; errores = errores + 1; confianza = confianza - 1; retro = "Plan impreciso: revisa intensidad, frecuencia y amenaza antes de decidir."; }
          if (key == '3' && correcta != 3) { puntos = puntos - 4; errores = errores + 1; empatia = empatia - 1; retro = "Alarma innecesaria: en casos leves conviene contener y explorar contexto."; }
          ronda = ronda + 1;
          caso = int(random(1, 31));
          if (errores >= 5) { pantalla = 90; finalTitulo = "Consulta interrumpida"; finalMensaje = "El consultorio perdió claridad en demasiadas decisiones."; finalReflexion = "Reflexión: ayudar también exige medir el riesgo antes de actuar."; }
          if (ronda > 12) { pantalla = 90; finalTitulo = "Cierre de consulta"; finalMensaje = "Acompañaste a los pacientes con criterio y humanidad."; finalReflexion = "Reflexión: escuchar, registrar y proteger son pasos distintos, pero todos importan."; }
        }
        tecla = 1;
      }
    }
  }

  if (pantalla == 21) {
    if (caso == 1) {
      casoTexto = "Gracias por explicarlo sin burlarte.";
      correcta = 1;
    }
    if (caso == 2) {
      casoTexto = "Nadie quiere verte en el grupo.";
      correcta = 3;
    }
    if (caso == 3) {
      casoTexto = "¿Puedes repetir la instrucción?";
      correcta = 2;
    }
    if (caso == 4) {
      casoTexto = "Tu comentario ayudó mucho.";
      correcta = 1;
    }
    if (caso == 5) {
      casoTexto = "Voy a exponer tus capturas.";
      correcta = 3;
    }
    if (caso == 6) {
      casoTexto = "No sé si entendí bien.";
      correcta = 2;
    }
    if (caso == 7) {
      casoTexto = "Cuenta conmigo para hablar.";
      correcta = 1;
    }
    if (caso == 8) {
      casoTexto = "Das pena cuando participas.";
      correcta = 3;
    }
    if (caso == 9) {
      casoTexto = "Mañana revisamos el archivo.";
      correcta = 2;
    }
    if (caso == 10) {
      casoTexto = "Me gustó cómo defendiste tu idea.";
      correcta = 1;
    }
    if (caso == 11) {
      casoTexto = "Todos ignoren sus mensajes.";
      correcta = 3;
    }
    if (caso == 12) {
      casoTexto = "¿A qué hora empieza la reunión?";
      correcta = 2;
    }
    if (caso == 13) {
      casoTexto = "Tus dibujos son una vergüenza.";
      correcta = 3;
    }
    if (caso == 14) {
      casoTexto = "Respeto tu punto aunque piense distinto.";
      correcta = 1;
    }
    if (caso == 15) {
      casoTexto = "No pude abrir el enlace.";
      correcta = 2;
    }
    if (caso == 16) {
      casoTexto = "Vamos a inventarle un rumor.";
      correcta = 3;
    }
    if (caso == 17) {
      casoTexto = "Gracias por preguntar cómo estoy.";
      correcta = 1;
    }
    if (caso == 18) {
      casoTexto = "Ese mensaje fue confuso.";
      correcta = 2;
    }
    if (caso == 19) {
      casoTexto = "Si hablas, te va peor.";
      correcta = 3;
    }
    if (caso == 20) {
      casoTexto = "Buen intento, sigue practicando.";
      correcta = 1;
    }
    if (caso == 21) {
      casoTexto = "El trabajo se entrega hoy.";
      correcta = 2;
    }
    if (caso == 22) {
      casoTexto = "No lo inviten nunca más.";
      correcta = 3;
    }
    if (caso == 23) {
      casoTexto = "Me ayudaste a calmarme.";
      correcta = 1;
    }
    if (caso == 24) {
      casoTexto = "¿Cuál era la página?";
      correcta = 2;
    }
    if (caso == 25) {
      casoTexto = "Publicaré tu número.";
      correcta = 3;
    }
    if (caso == 26) {
      casoTexto = "Me parece justo escucharte.";
      correcta = 1;
    }
    if (caso == 27) {
      casoTexto = "No entendí la broma.";
      correcta = 2;
    }
    if (caso == 28) {
      casoTexto = "Eres el peor del salón.";
      correcta = 3;
    }
    if (caso == 29) {
      casoTexto = "Podemos resolverlo con respeto.";
      correcta = 1;
    }
    if (caso == 30) {
      casoTexto = "El profesor cambió la fecha.";
      correcta = 2;
    }

    limite = 360;
    if (ronda > 7) { limite = 300; }
    if (ronda > 14) { limite = 240; }
    if (ayuda == 0) { tiempo = tiempo + 1; }
    if (tiempo > limite) {
      errores = errores + 1;
      ronda = ronda + 1;
      tiempo = 0;
      caso = int(random(1, 31));
      retro = "Se acabó la barra. En consulta también cuenta la atención.";
    }

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 10 / 100, height * 14 / 100, width * 80 / 100, height * 48 / 100, esc * 18 / 1000);
    noStroke();
    fill(60, 52, 60);
    textSize(esc * 38 / 1000);
    text("Semáforo emocional", width * 14 / 100, height * 22 / 100);
    textSize(esc * 20 / 1000);
    text("Ronda: " + ronda + "/20     Puntos: " + puntos + "     Errores: " + errores + "/5", width * 14 / 100, height * 285 / 1000);
    fill(220, 220, 225);
    rect(width * 14 / 100, height * 33 / 100, width * 72 / 100, height * 3 / 100, esc * 6 / 1000);
    fill(65, 160, 190);
    rect(width * 14 / 100, height * 33 / 100, (width * 72 / 100) * (limite - tiempo) / limite, height * 3 / 100, esc * 6 / 1000);

    fill(92, 70, 88);
    textSize(esc * 24 / 1000);
    text("Frase recibida:", width * 14 / 100, height * 43 / 100);
    fill(40, 40, 46);
    textSize(esc * 34 / 1000);
    text(casoTexto, width * 14 / 100, height * 51 / 100);

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 9 / 100, height * 67 / 100, width * 25 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 375 / 1000, height * 67 / 100, width * 25 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 665 / 1000, height * 67 / 100, width * 25 / 100, height * 9 / 100, esc * 12 / 1000);
    noStroke();
    fill(36, 120, 78);
    ellipse(width * 11 / 100, height * 715 / 1000, esc * 18 / 1000, esc * 18 / 1000);
    fill(175, 132, 38);
    ellipse(width * 397 / 1000, height * 715 / 1000, esc * 18 / 1000, esc * 18 / 1000);
    fill(170, 55, 65);
    ellipse(width * 685 / 1000, height * 715 / 1000, esc * 18 / 1000, esc * 18 / 1000);
    fill(65, 55, 60);
    textSize(esc * 24 / 1000);
    text("1 Verde", width * 13 / 100, height * 725 / 1000);
    text("2 Amarillo", width * 42 / 100, height * 725 / 1000);
    text("3 Rojo", width * 71 / 100, height * 725 / 1000);
    textSize(esc * 20 / 1000);
    text(retro, width * 10 / 100, height * 84 / 100);
    text("P instrucciones    M menú", width * 10 / 100, height * 91 / 100);

    if (errores > 5) { pantalla = 90; finalTitulo = "Semáforo saturado"; finalMensaje = "La lectura emocional perdió precisión."; finalReflexion = "Reflexión: una frase puede parecer pequeña, pero su intención cambia el cuidado necesario."; }
    if (ronda > 20) { pantalla = 90; finalTitulo = "Lectura completada"; finalMensaje = "Clasificaste las señales con buena atención."; finalReflexion = "Reflexión: detectar a tiempo evita que una tensión se convierta en daño."; }

    if (keyPressed == true && tecla == 0) {
      if (key == 'p' || key == 'P') { ayuda = 1; }
      if (ayuda == 0) {
        if (key == 'm' || key == 'M') { pantalla = 1; }
        if (key == '1' || key == '2' || key == '3') {
          base = 10;
          if (ronda > 5) { base = 12; }
          if (ronda > 10) { base = 14; }
          if (ronda > 15) { base = 17; }
          bonus = 0;
          if (tiempo < limite / 3) { bonus = 5; }
          if (tiempo > limite * 2 / 3) { bonus = -3; }
          ganado = base + bonus;
          if (ganado < 1) { ganado = 1; }
          if (key == '1' && correcta == 1) { puntos = puntos + ganado; retro = "Verde correcto. Sumaste " + ganado + " puntos."; }
          if (key == '2' && correcta == 2) { puntos = puntos + ganado; retro = "Amarillo correcto. Sumaste " + ganado + " puntos."; }
          if (key == '3' && correcta == 3) { puntos = puntos + ganado; retro = "Rojo correcto. Sumaste " + ganado + " puntos."; }
          if (key == '1' && correcta != 1) { errores = errores + 1; retro = "No era verde: había una señal que pedía más cuidado."; }
          if (key == '2' && correcta != 2) { errores = errores + 1; retro = "No era amarillo: revisa si era apoyo claro o daño claro."; }
          if (key == '3' && correcta != 3) { errores = errores + 1; retro = "No era rojo: no toda tensión es agresión directa."; }
          ronda = ronda + 1;
          tiempo = 0;
          caso = int(random(1, 31));
        }
        tecla = 1;
      }
    }
  }

  if (pantalla == 31) {
    if (turno > jugadores) { turno = 1; }
    if (j1 <= 0) { ganador = 1; }
    if (j2 <= 0) { ganador = 2; }
    if (j3 <= 0 && jugadores >= 3) { ganador = 3; }
    if (j4 <= 0 && jugadores >= 4) { ganador = 4; }
    if (j5 <= 0 && jugadores >= 5) { ganador = 5; }
    if (j6 <= 0 && jugadores >= 6) { ganador = 6; }
    if (ganador > 0) { pantalla = 90; finalTitulo = "Red de apoyo completada"; finalMensaje = "El orientador " + ganador + " logró ubicar todos sus casos."; finalReflexion = "Reflexión: en clínica y escuela, cuidar no es hacerlo solo; es activar una red segura."; }

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 6 / 100, height * 10 / 100, width * 88 / 100, height * 54 / 100, esc * 18 / 1000);
    noStroke();
    fill(60, 52, 60);
    textSize(esc * 36 / 1000);
    text("Red de apoyo con dado", width * 10 / 100, height * 18 / 100);
    textSize(esc * 20 / 1000);
    text("Jugador activo: " + turno + "     Jugadores: " + jugadores + "     Dado: " + dado + "     Colapsos: " + colapsos, width * 10 / 100, height * 24 / 100);

    fill(232, 246, 250);
    stroke(70, 60, 66);
    strokeWeight(esc * 2 / 1000);
    rect(width * 10 / 100, height * 29 / 100, width * 80 / 100, height * 13 / 100, esc * 12 / 1000);
    noStroke();
    fill(45, 45, 52);
    textSize(esc * 22 / 1000);
    text("Canales clínico-escolares", width * 12 / 100, height * 34 / 100);
    text("1 Escucha " + canal1 + "/1", width * 12 / 100, height * 39 / 100);
    text("2 Familia " + canal2 + "/2", width * 25 / 100, height * 39 / 100);
    text("3 Aula " + canal3 + "/3", width * 38 / 100, height * 39 / 100);
    text("4 Mediación " + canal4 + "/4", width * 50 / 100, height * 39 / 100);
    text("5 Seguimiento " + canal5 + "/5", width * 64 / 100, height * 39 / 100);
    text("6 Crisis " + canal6 + "/∞", width * 79 / 100, height * 39 / 100);

    fill(250, 244, 232);
    stroke(70, 60, 66);
    strokeWeight(esc * 2 / 1000);
    rect(width * 10 / 100, height * 45 / 100, width * 80 / 100, height * 13 / 100, esc * 12 / 1000);
    noStroke();
    fill(45, 45, 52);
    textSize(esc * 22 / 1000);
    text("Casos pendientes", width * 12 / 100, height * 50 / 100);
    text("J1 " + j1 + "   J2 " + j2 + "   J3 " + j3 + "   J4 " + j4 + "   J5 " + j5 + "   J6 " + j6, width * 12 / 100, height * 55 / 100);

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 8 / 100, height * 69 / 100, width * 19 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 30 / 100, height * 69 / 100, width * 19 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 52 / 100, height * 69 / 100, width * 19 / 100, height * 9 / 100, esc * 12 / 1000);
    rect(width * 74 / 100, height * 69 / 100, width * 18 / 100, height * 9 / 100, esc * 12 / 1000);
    noStroke();
    fill(65, 55, 60);
    textSize(esc * 23 / 1000);
    text("L lanzar", width * 11 / 100, height * 745 / 1000);
    text("S pasar", width * 34 / 100, height * 745 / 1000);
    text("+ jugador", width * 55 / 100, height * 745 / 1000);
    text("M menú", width * 78 / 100, height * 745 / 1000);
    textSize(esc * 20 / 1000);
    text(retro, width * 9 / 100, height * 84 / 100);
    text("P instrucciones. Gana quien queda sin casos.", width * 9 / 100, height * 91 / 100);

    if (keyPressed == true && tecla == 0) {
      if (key == 'p' || key == 'P') { ayuda = 1; }
      if (ayuda == 0) {
        if (key == 'm' || key == 'M') { pantalla = 1; }
        if (key == '+' && jugadores < 6) { jugadores = jugadores + 1; retro = "Nuevo orientador agregado a la red."; }
        if (key == 's' || key == 'S') { turno = turno + 1; retro = "El orientador pasa el turno para evitar saturar la red."; }
        if (key == 'l' || key == 'L') {
          dado = int(random(1, 7));
          if (turno == 1 && j1 > 0) { j1 = j1 - 1; }
          if (turno == 2 && j2 > 0) { j2 = j2 - 1; }
          if (turno == 3 && j3 > 0) { j3 = j3 - 1; }
          if (turno == 4 && j4 > 0) { j4 = j4 - 1; }
          if (turno == 5 && j5 > 0) { j5 = j5 - 1; }
          if (turno == 6 && j6 > 0) { j6 = j6 - 1; }
          puntos = puntos + 5;
          retro = "Caso derivado al canal " + dado + ": se activa la red de apoyo.";
          if (dado == 1) {
            if (canal1 >= 1) { if (turno == 1) { j1 = j1 + canal1 + 1; } if (turno == 2) { j2 = j2 + canal1 + 1; } if (turno == 3) { j3 = j3 + canal1 + 1; } if (turno == 4) { j4 = j4 + canal1 + 1; } if (turno == 5) { j5 = j5 + canal1 + 1; } if (turno == 6) { j6 = j6 + canal1 + 1; } canal1 = 0; turno = turno + 1; colapsos = colapsos + 1; puntos = puntos - 8; retro = "Canal 1 colapsó: escuchar ayuda, pero no puede recibir todo."; }
            if (canal1 < 1) { canal1 = canal1 + 1; }
          }
          if (dado == 2) {
            if (canal2 >= 2) { if (turno == 1) { j1 = j1 + canal2 + 1; } if (turno == 2) { j2 = j2 + canal2 + 1; } if (turno == 3) { j3 = j3 + canal2 + 1; } if (turno == 4) { j4 = j4 + canal2 + 1; } if (turno == 5) { j5 = j5 + canal2 + 1; } if (turno == 6) { j6 = j6 + canal2 + 1; } canal2 = 0; turno = turno + 1; colapsos = colapsos + 1; puntos = puntos - 8; retro = "Canal 2 colapsó: la familia necesita guía gradual."; }
            if (canal2 < 2) { canal2 = canal2 + 1; }
          }
          if (dado == 3) {
            if (canal3 >= 3) { if (turno == 1) { j1 = j1 + canal3 + 1; } if (turno == 2) { j2 = j2 + canal3 + 1; } if (turno == 3) { j3 = j3 + canal3 + 1; } if (turno == 4) { j4 = j4 + canal3 + 1; } if (turno == 5) { j5 = j5 + canal3 + 1; } if (turno == 6) { j6 = j6 + canal3 + 1; } canal3 = 0; turno = turno + 1; colapsos = colapsos + 1; puntos = puntos - 8; retro = "Canal 3 colapsó: el aula también tiene límites."; }
            if (canal3 < 3) { canal3 = canal3 + 1; }
          }
          if (dado == 4) {
            if (canal4 >= 4) { if (turno == 1) { j1 = j1 + canal4 + 1; } if (turno == 2) { j2 = j2 + canal4 + 1; } if (turno == 3) { j3 = j3 + canal4 + 1; } if (turno == 4) { j4 = j4 + canal4 + 1; } if (turno == 5) { j5 = j5 + canal4 + 1; } if (turno == 6) { j6 = j6 + canal4 + 1; } canal4 = 0; turno = turno + 1; colapsos = colapsos + 1; puntos = puntos - 8; retro = "Canal 4 colapsó: mediación requiere orden y seguimiento."; }
            if (canal4 < 4) { canal4 = canal4 + 1; }
          }
          if (dado == 5) {
            if (canal5 >= 5) { if (turno == 1) { j1 = j1 + canal5 + 1; } if (turno == 2) { j2 = j2 + canal5 + 1; } if (turno == 3) { j3 = j3 + canal5 + 1; } if (turno == 4) { j4 = j4 + canal5 + 1; } if (turno == 5) { j5 = j5 + canal5 + 1; } if (turno == 6) { j6 = j6 + canal5 + 1; } canal5 = 0; turno = turno + 1; colapsos = colapsos + 1; puntos = puntos - 8; retro = "Canal 5 colapsó: el seguimiento debe distribuirse."; }
            if (canal5 < 5) { canal5 = canal5 + 1; }
          }
          if (dado == 6) { canal6 = canal6 + 1; puntos = puntos + 4; retro = "Canal 6: crisis priorizada sin colapso."; }
        }
        tecla = 1;
      }
    }
  }

  if (pantalla == 41) {
    if (caso == 1) {
      paciente = "Caso A";
      casoTexto = "Estudiante nervioso después de una burla leve.";
      correcta = 1;
    }
    if (caso == 2) {
      paciente = "Caso B";
      casoTexto = "Familia debe conocer cambios fuertes de ánimo.";
      correcta = 2;
    }
    if (caso == 3) {
      paciente = "Caso C";
      casoTexto = "Grupo de clase repite exclusiones en el chat.";
      correcta = 3;
    }
    if (caso == 4) {
      paciente = "Caso D";
      casoTexto = "Amenaza directa con datos personales.";
      correcta = 4;
    }
    if (caso == 5) {
      paciente = "Caso E";
      casoTexto = "Alumno necesita respirar y ordenar ideas.";
      correcta = 1;
    }
    if (caso == 6) {
      paciente = "Caso F";
      casoTexto = "Acudiente pide guía para manejar redes en casa.";
      correcta = 2;
    }
    if (caso == 7) {
      paciente = "Caso G";
      casoTexto = "Docente observa apodos constantes en clase.";
      correcta = 3;
    }
    if (caso == 8) {
      paciente = "Caso H";
      casoTexto = "Chantaje con fotos privadas.";
      correcta = 4;
    }
    if (caso == 9) {
      paciente = "Caso I";
      casoTexto = "Discusión menor que requiere escucha inicial.";
      correcta = 1;
    }
    if (caso == 10) {
      paciente = "Caso J";
      casoTexto = "Familia no sabe cómo acompañar al estudiante.";
      correcta = 2;
    }
    if (caso == 11) {
      paciente = "Caso K";
      casoTexto = "Curso completo normalizó una burla.";
      correcta = 3;
    }
    if (caso == 12) {
      paciente = "Caso L";
      casoTexto = "Riesgo urgente de exposición digital.";
      correcta = 4;
    }
    if (caso == 13) {
      paciente = "Caso M";
      casoTexto = "Estudiante llora y necesita espacio seguro.";
      correcta = 1;
    }
    if (caso == 14) {
      paciente = "Caso N";
      casoTexto = "Padres reportan aislamiento repentino.";
      correcta = 2;
    }
    if (caso == 15) {
      paciente = "Caso O";
      casoTexto = "Se requiere acuerdo grupal de convivencia.";
      correcta = 3;
    }
    if (caso == 16) {
      paciente = "Caso P";
      casoTexto = "Amenaza física relacionada con redes.";
      correcta = 4;
    }
    if (caso == 17) {
      paciente = "Caso Q";
      casoTexto = "Estudiante confuso por malentendido.";
      correcta = 1;
    }
    if (caso == 18) {
      paciente = "Caso R";
      casoTexto = "Familia debe guardar evidencias.";
      correcta = 2;
    }
    if (caso == 19) {
      paciente = "Caso S";
      casoTexto = "Colegio debe activar mediación escolar.";
      correcta = 3;
    }
    if (caso == 20) {
      paciente = "Caso T";
      casoTexto = "Caso crítico con intimidación persistente.";
      correcta = 4;
    }

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 8 / 100, height * 12 / 100, width * 84 / 100, height * 48 / 100, esc * 18 / 1000);
    noStroke();
    fill(60, 52, 60);
    textSize(esc * 38 / 1000);
    text("Práctica de agenda clínica", width * 12 / 100, height * 20 / 100);
    textSize(esc * 20 / 1000);
    text("Práctica: " + ronda + "/12     Puntos: " + puntos + "     Saturaciones: " + colapsos + "/3", width * 12 / 100, height * 265 / 1000);
    fill(92, 70, 88);
    textSize(esc * 23 / 1000);
    text(paciente, width * 12 / 100, height * 36 / 100);
    fill(40, 40, 46);
    textSize(esc * 28 / 1000);
    text(casoTexto, width * 12 / 100, height * 43 / 100);
    textSize(esc * 19 / 1000);
    text("Capacidades usadas: Sala calma " + consultorioCalma + "/4   Familia " + familia + "/3   Colegio " + colegio + "/5   Urgencias " + emergencia + "/2", width * 12 / 100, height * 53 / 100);

    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 8 / 100, height * 66 / 100, width * 20 / 100, height * 10 / 100, esc * 12 / 1000);
    rect(width * 30 / 100, height * 66 / 100, width * 20 / 100, height * 10 / 100, esc * 12 / 1000);
    rect(width * 52 / 100, height * 66 / 100, width * 20 / 100, height * 10 / 100, esc * 12 / 1000);
    rect(width * 74 / 100, height * 66 / 100, width * 18 / 100, height * 10 / 100, esc * 12 / 1000);
    noStroke();
    fill(65, 55, 60);
    textSize(esc * 21 / 1000);
    text("1 Sala calma", width * 10 / 100, height * 72 / 100);
    text("2 Familia", width * 32 / 100, height * 72 / 100);
    text("3 Colegio", width * 54 / 100, height * 72 / 100);
    text("4 Urgencias", width * 76 / 100, height * 72 / 100);
    textSize(esc * 20 / 1000);
    text(retro, width * 9 / 100, height * 84 / 100);
    text("P instrucciones    M menú", width * 9 / 100, height * 91 / 100);

    if (colapsos >= 3) { pantalla = 90; finalTitulo = "Agenda desbordada"; finalMensaje = "El consultorio recibió más casos de los que pudo organizar."; finalReflexion = "Reflexión: derivar bien es tan importante como querer ayudar."; }
    if (ronda > 12) { pantalla = 90; finalTitulo = "Red de apoyo organizada"; finalMensaje = "Cada caso encontró una ruta de atención más segura."; finalReflexion = "Reflexión: un buen acompañamiento reparte responsabilidades, no las carga en una sola persona."; }

    if (keyPressed == true && tecla == 0) {
      if (key == 'p' || key == 'P') { ayuda = 1; }
      if (ayuda == 0) {
        if (key == 'm' || key == 'M') { pantalla = 1; }
        if (key == '1' || key == '2' || key == '3' || key == '4') {
          if (key == '1') { consultorioCalma = consultorioCalma + 1; }
          if (key == '2') { familia = familia + 1; }
          if (key == '3') { colegio = colegio + 1; }
          if (key == '4') { emergencia = emergencia + 1; }
          if (key == '1' && consultorioCalma > 4) { colapsos = colapsos + 1; consultorioCalma = 0; retro = "Sala calma saturada. Se reorganiza el servicio."; }
          if (key == '2' && familia > 3) { colapsos = colapsos + 1; familia = 0; retro = "Familia saturada. Faltó priorizar el caso."; }
          if (key == '3' && colegio > 5) { colapsos = colapsos + 1; colegio = 0; retro = "Colegio saturado. Se requiere mejor distribución."; }
          if (key == '4' && emergencia > 2) { colapsos = colapsos + 1; emergencia = 0; retro = "Urgencias saturadas. Solo lo crítico debe ir allí."; }
          if (key == '1' && correcta == 1) { puntos = puntos + 14; retro = "Ruta correcta: primero regulación y escucha."; }
          if (key == '2' && correcta == 2) { puntos = puntos + 14; retro = "Ruta correcta: la familia debe acompañar este proceso."; }
          if (key == '3' && correcta == 3) { puntos = puntos + 14; retro = "Ruta correcta: el colegio debe intervenir la convivencia."; }
          if (key == '4' && correcta == 4) { puntos = puntos + 14; retro = "Ruta correcta: caso crítico priorizado."; }
          if (key == '1' && correcta != 1) { puntos = puntos - 5; errores = errores + 1; retro = "La sala calma no resolvía el núcleo del caso."; }
          if (key == '2' && correcta != 2) { puntos = puntos - 5; errores = errores + 1; retro = "La familia ayuda, pero no era la primera ruta."; }
          if (key == '3' && correcta != 3) { puntos = puntos - 5; errores = errores + 1; retro = "El colegio no era suficiente para este caso."; }
          if (key == '4' && correcta != 4) { puntos = puntos - 5; errores = errores + 1; retro = "Urgencias se reserva para riesgo grave."; }
          ronda = ronda + 1;
          caso = int(random(1, 21));
        }
        tecla = 1;
      }
    }
  }


  if (pantalla == 90) {
    fill(255, 252, 244);
    stroke(70, 60, 66);
    strokeWeight(esc * 3 / 1000);
    rect(width * 18 / 100, height * 17 / 100, width * 64 / 100, height * 52 / 100, esc * 18 / 1000);
    noStroke();
    fill(65, 55, 60);
    textSize(esc * 42 / 1000);
    text(finalTitulo, width * 23 / 100, height * 27 / 100);
    textSize(esc * 26 / 1000);
    text("Puntaje final de " + nombre + ": " + puntos, width * 23 / 100, height * 37 / 100);
    fill(44, 44, 52);
    textSize(esc * 24 / 1000);
    text(finalMensaje, width * 23 / 100, height * 47 / 100);
    text(finalReflexion, width * 23 / 100, height * 56 / 100);
    fill(92, 70, 88);
    rect(width * 23 / 100, height * 62 / 100, width * 54 / 100, height * 1 / 100, esc * 4 / 1000);
    fill(65, 55, 60);
    textSize(esc * 22 / 1000);
    text("Presiona M para volver al menú del consultorio.", width * 23 / 100, height * 73 / 100);
    if (keyPressed == true && tecla == 0) {
      if (key == 'm' || key == 'M') { pantalla = 1; }
      tecla = 1;
    }
  }

  if (ayuda == 1) {
    fill(35, 32, 42, 235);
    rect(width * 14 / 100, height * 15 / 100, width * 72 / 100, height * 62 / 100, esc * 18 / 1000);
    stroke(255);
    strokeWeight(esc * 3 / 1000);
    noFill();
    rect(width * 16 / 100, height * 18 / 100, width * 68 / 100, height * 56 / 100, esc * 12 / 1000);
    noStroke();
    fill(255);
    textSize(esc * 40 / 1000);
    text("Instrucciones del consultorio", width * 21 / 100, height * 27 / 100);
    textSize(esc * 23 / 1000);
    if (pantalla == 11) {
      text("1 Contención: escuchar y validar.", width * 21 / 100, height * 38 / 100);
      text("2 Plan de apoyo: seguimiento, evidencias y acuerdos.", width * 21 / 100, height * 45 / 100);
      text("3 Protocolo: amenazas, chantaje, datos privados o riesgo alto.", width * 21 / 100, height * 52 / 100);
      text("Objetivo: equilibrar empatía, seguridad y confianza.", width * 21 / 100, height * 59 / 100);
    }
    if (pantalla == 21) {
      text("1 Verde: apoyo o reparación.", width * 21 / 100, height * 38 / 100);
      text("2 Amarillo: duda, malentendido o tensión moderada.", width * 21 / 100, height * 45 / 100);
      text("3 Rojo: daño claro, presión, amenaza o humillación.", width * 21 / 100, height * 52 / 100);
      text("Responde antes de que la barra se agote.", width * 21 / 100, height * 59 / 100);
    }
    if (pantalla == 31) {
      text("L lanza el dado para derivar un caso.", width * 21 / 100, height * 38 / 100);
      text("S pasa turno. + agrega jugadores hasta 6.", width * 21 / 100, height * 45 / 100);
      text("Canales 1 a 5 se saturan; el 6 es crisis y no colapsa.", width * 21 / 100, height * 52 / 100);
      text("Idea clínica: una red ayuda mejor que una sola persona saturada.", width * 21 / 100, height * 59 / 100);
    }
    if (pantalla == 41) {
      text("1 Sala calma: regulación emocional y validación.", width * 21 / 100, height * 38 / 100);
      text("2 Familia: adulto seguro, evidencias y acompañamiento.", width * 21 / 100, height * 45 / 100);
      text("3 Colegio: convivencia, mediación y seguimiento.", width * 21 / 100, height * 52 / 100);
      text("4 Urgencias digitales: amenaza, chantaje o exposición.", width * 21 / 100, height * 59 / 100);
    }
    text("Presiona C para cerrar.", width * 21 / 100, height * 70 / 100);
    if (keyPressed == true && tecla == 0) {
      if (key == 'c' || key == 'C') { ayuda = 0; }
      tecla = 1;
    }
  }
}
