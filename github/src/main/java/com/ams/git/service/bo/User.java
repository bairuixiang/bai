package com.ams.git.service.bo;

public class User {

    private int id;
    private String name;
    private String brief;
    private String us1;
    private String uptime;

    public User() {
    }

    public User(int id, String name, String brief, String us1, String uptime) {
        this.id = id;
        this.name = name;
        this.brief = brief;
        this.us1 = us1;
        this.uptime = uptime;
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

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getUs1() {
        return us1;
    }

    public void setUs1(String us1) {
        this.us1 = us1;
    }

    public String getUptime() {
        return uptime;
    }

    public void setUptime(String uptime) {
        this.uptime = uptime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", brief='" + brief + '\'' +
                ", us1='" + us1 + '\'' +
                ", uptime='" + uptime + '\'' +
                '}';
    }
}
