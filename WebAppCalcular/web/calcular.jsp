<%-- 
    Document   : calcular
    Created on : 11 de mar. de 2025, 20:11:06
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="calc.Calculadora"%> // Importando biblioteca calc
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculos JSP</title>
    </head>
    <body>
        <h1>Calculos</h1>
        <%
            // Entrada de Dados
        String nome = request.getParameter("nome");
        float num1 = Float.parseFloat(request.getParameter("numero1"));
        float num2 = Float.parseFloat(request.getParameter("numero2"));
        
        // Processamento
        Calculadora calc = new Calculadora(); // Instancia do Objeto calc
        
        out.print(" <br> + Soma de: "+ calc.somar(num1, num2));
        out.print(" <br> + Divisão de: "+ calc.dividir(num1, num2));
        out.print(" <br> + Subtração de: "+ calc.subtrair(num1, num2));
        out.print(" <br> + Multiplicação de: "+ calc.multiplicar(num1, num2));
        out.print(" <br> + Dobro de: "+ calc.dobro(num1));
        out.print(" <br> + Triplo: "+ calc.triplo(num1));
        %>
    </body>
</html>
