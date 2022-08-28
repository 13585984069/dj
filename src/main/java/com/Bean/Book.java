package com.Bean;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * @author JJChen
 * @version 1.0
 */
public class Book {
    private String name;
    private String[] writer;
    private List<String> reader;
    private Map<String,String> topics;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getWriter() {
        return writer;
    }

    public void setWriter(String[] writer) {
        this.writer = writer;
    }

    public List<String> getReader() {
        return reader;
    }

    public void setReader(List<String> reader) {
        this.reader = reader;
    }

    public Map<String, String> getTopics() {
        return topics;
    }

    public void setTopics(Map<String, String> topics) {
        this.topics = topics;
    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", writer=" + Arrays.toString(writer) +
                ", reader=" + reader +
                ", topics=" + topics +
                '}';
    }
}
