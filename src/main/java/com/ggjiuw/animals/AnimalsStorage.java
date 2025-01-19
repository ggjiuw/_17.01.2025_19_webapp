package com.ggjiuw.animals;

import java.util.ArrayList;
import java.util.List;

public class AnimalsStorage {
    static List<Animal> animals = new ArrayList<>();

    public static synchronized List<Animal> getAnimals() {
        ArrayList<Animal> a = new ArrayList<>(animals);
        a.add(new Animal("test", "type"));
        return new ArrayList<>(animals);
    }

    public static synchronized void addAnimal(Animal a){
        animals.add(a);
    }
}
