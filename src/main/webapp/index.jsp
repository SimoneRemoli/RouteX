<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RouteX - Metro Finder</title>

    <!-- Aggiunta di uno stile CSS per animazioni e layout -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        /* Nuovo div di sfondo */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('images/interactivemap.png') no-repeat center center;
            background-size: cover;
            z-index: -1; /* Metti lo sfondo dietro */
            filter: brightness(0.8); /* Aggiungi un'oscurità per maggiore contrasto */
        }

        .container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            animation: fadeIn 2s ease-in-out;
            position: relative; /* Posizionamento relativo per il contesto */
            z-index: 1; /* Metti il contenitore sopra lo sfondo */
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            animation: slideIn 1.5s ease-out;
        }

        img {
            width: 100%;
            max-width: 300px; /* Riduzione della dimensione massima dell'immagine */
            height: auto;
            border-radius: 8px;
            animation: zoomIn 1.5s ease-out;
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            font-size: 18px; /* Ingrandisce leggermente il testo */
            font-family: 'Georgia', serif; /* Cambia il font per renderlo più elegante */
            text-decoration: none;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Aggiunta ombra al pulsante */
            transition: all 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3); /* Aumenta l'ombra al passaggio del mouse */
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(-20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes zoomIn {
            from { transform: scale(0.5); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body>
    <!-- Div di sfondo -->
    <div class="background"></div>

    <!-- Contenitore principale -->
    <div class="container">
        <!-- Immagine della metropolitana -->
        <img src="images/logo-black.svg" alt="Metropolitana">

        <!-- Titolo con animazione -->
        <h1>Welcome aboard RouteX! Let's map out your adventure.</h1>

        <!-- Pulsante per l'interazione -->
        <a href="routeFinder" class="btn">Find Your Route</a>
    </div>
</body>
</html>
