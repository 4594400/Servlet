package ua.goit.java.module_8;


import java.io.Serializable;

public class Task implements Serializable{
    private int id;
    private String name;
    private String category;
    private boolean isComplete;

    public Task() {
    }

    public Task(String name, String category, boolean isComplete) {
        this.name = name;
        this.category = category;
        this.isComplete = isComplete;
    }

    public Task(int id, String name, String category, boolean isComplete) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.isComplete = isComplete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean isComplete() {
        return isComplete;
    }

    public void setComplete(boolean complete) {
        isComplete = complete;
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", isComplete=" + isComplete +
                '}';
    }
}
