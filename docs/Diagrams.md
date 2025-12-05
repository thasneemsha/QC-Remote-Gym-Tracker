```mermaid
flowchart LR
  %% QFit Universal Workout Tracker - High-Level Architecture

  %% ==== CLIENT LAYER ====
  subgraph Clients
    UC[User Client\n(Browser)]
    AC[Admin Client\n(Browser)]
  end

  %% ==== WEB / REVERSE PROXY LAYER ====
  AP[Apache HTTP Server\n(Reverse Proxy + HTTPS)]

  %% ==== APPLICATION LAYER (TOMCAT) ====
  subgraph Tomcat Application Server
    TC[Core App Services\nFR-1: Account\nFR-2: Workouts\nFR-3: Progress\nFR-4: Goals\nFR-6: Admin]
    TA[API Integration Service\nFR-5: Google Fit / Apple Health]
  end

  %% ==== DATA LAYER ====
  DB[(MySQL Database\nUsers, Workouts, Goals,\nBiometric Data, Admin Logs)]

  %% ==== EXTERNAL SERVICES ====
  subgraph External Services
    GF[Google Fit API]
    AH[Apple Health API]
    EM[Email / SMTP\n(Password Reset)]
  end

  %% ==== FLOWS ====

  %% Clients -> Apache
  UC -->|HTTPS requests\n(user pages)| AP
  AC -->|HTTPS requests\n(admin pages)| AP

  %% Apache -> Tomcat
  AP -->|/app, /dashboard,\n/auth requests| TC
  AP -->|/api/health,\n/api/sync| TA

  %% Tomcat Core -> DB
  TC -->|CRUD Users,\nWorkouts, Goals,\nAdmin actions| DB

  %% API Service -> DB + External
  TA -->|Store tokens,\nbiometric data| DB
  TA -->|OAuth + Sync\nbiometric data| GF
  TA -->|OAuth + Sync\nbiometric data| AH

  %% Email Service (Password reset)
  TC -->|Send reset link\nand notifications| EM
