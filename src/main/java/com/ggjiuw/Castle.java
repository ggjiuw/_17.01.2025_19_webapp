package com.ggjiuw;

import com.ggjiuw.animals.Animal;
import com.ggjiuw.animals.AnimalsStorage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Castle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("animals", AnimalsStorage.getAnimals());

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/allAnimals.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        Animal animal = new Animal(name, type);
        AnimalsStorage.addAnimal(animal);
        request.setAttribute("animals", animal);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/animal.jsp");
        requestDispatcher.forward(request, response);
    }
}
