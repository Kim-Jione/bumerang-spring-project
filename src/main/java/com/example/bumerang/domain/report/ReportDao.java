package com.example.bumerang.domain.report;

import java.util.List;

public interface ReportDao {
    public Report findById(Integer reportId);

    public List<Report> findAll();

    public void insert(Report report);

    public void delete(Integer reportId);

    public Report findByRecent();
}
