# 🎬 IMDB Movie Dataset Analysis

## 📌 Overview

This project performs end-to-end data analysis on an IMDB movies dataset
to understand factors that influence movie success, ratings, and
profitability.

Workflow: - Data cleaning and transformation (ETL) - Database design
using MySQL - SQL analytics - Data visualization using Matplotlib -
Business insight generation

## 🎯 Problem Statement

-   Which genres generate the highest revenue?
-   Does higher budget lead to higher profit?
-   Which directors consistently deliver successful movies?
-   How are ratings distributed across genres?
-   What drives movie profitability?

## 🛠️ Tools & Technologies

-   Python (Pandas, NumPy, Matplotlib)
-   MySQL
-   SQL
-   Git & GitHub

## 🧹 Data Cleaning & Business Rules

-   Generated surrogate movie_id
-   Filled rating using genre average then global average
-   Filled budget using genre median
-   Replaced missing gross with 0
-   Replaced missing director/actor with 'Unknown'
-   Filled release_year with median
-   Created profit_million column

## 🔄 ETL Pipeline

Raw CSV → Python ETL → Clean Data → MySQL → SQL → Visualizations

## 🗄️ Database Schema

movie_id, title, genre, rating, budget_million, gross_million, director,
lead_actor, release_year, profit_million

## 📊 Visualizations

-   Budget vs Gross
-   Genre distribution pie chart
-   Profit distribution histogram
-   Top gross movies
-   Rating trend
-   ROI analysis

## 📈 Key Insights

-   High budget ≠ high profit always
-   Mid‑budget films often give best ROI
-   Action & Adventure dominate revenue
-   Director consistency impacts ratings
-   Rating alone doesn't guarantee success

## 📁 Project Structure

data/ notebooks/ sql/ images/ README.md

## 🚀 Outcome

Demonstrates ETL, SQL analytics, visualization, and business
storytelling.

## 💼 Resume Summary

Built an end‑to‑end IMDB analytics pipeline using Python and MySQL with
business‑rule‑driven ETL and dashboard insights.
