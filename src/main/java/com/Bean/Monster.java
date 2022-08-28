package com.Bean;

/**
 * @author JJChen
 * @version 1.0
 */
public class Monster {
    private Integer id;
    private String name;
    private int salary;

    public Monster() {
    }

    public Monster(Integer id, String name, int salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Monster{" +
                "name='" + name + '\'' +
                ", salary=" + salary +
                '}';
    }
}
