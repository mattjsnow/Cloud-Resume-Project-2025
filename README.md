# 🌥️ Cloud Resume Challenge

> 📝 **Note to Self:** This write-up will be adapted into a [Dev.to](https://dev.to) blog post. Keep sections narrative, include visuals, and explain decisions for beginner-to-intermediate readers.

---

## 📌 Table of Contents
- [Benefits of the Challenge](#benefits-of-the-challenge)
- [Challenge Stages](#challenge-stages)
  - [Stage 0 - Certification](#stage-0---certification)
  - [Stage 1 - Creating Front End](#stage-1---creating-front-end)
  - [Stage 2 - Building the API](#stage-2---building-the-api)
  - [Stage 3 - Frontend & Backend Integration](#stage-3---frontend--backend-integration)
  - [Stage 4 - Automation & CI/CD](#stage-4---automation--cicd)
    - [Smoke Testing with Cypress](#smoke-testing-with-cypress)
  - [Stage 5 - Security Hardening](#stage-5---security-hardening)
- [AI/ML Extensions (Future Ideas)](#aiml-extensions-future-ideas)

---

## ✅ Benefits of the Challenge
<!-- Placeholder: Write about why you're doing the challenge — learning IaC, proving end-to-end cloud fluency, etc. -->

---

## 🚀 Challenge Stages

### Stage 0 - Certification
<!-- Placeholder: Mention AWS certification you've earned or are studying for -->

---

### Stage 1 - Creating Front End
- **1.1 HTML** – basic static site structure  
- **1.2 CSS** – custom theme and styling  
- **1.3 JavaScript** – interactive elements (e.g. visitor counter)  
- **1.4 Static Assets via S3** – Hugo-generated site uploaded to S3  
- **1.5 CDN via CloudFront** – fast delivery with HTTPS and caching  

---

### Stage 2 - Building the API
- **2.1 DynamoDB** – stores and retrieves visitor count  
- **2.2 API Gateway** – REST endpoint to expose the backend  
- **2.3 Lambda (Python)** – serverless logic to update/view count  

---

### Stage 3 - Frontend & Backend Integration
- **3.1 Visitor Counter** – fetches count via JS, displays on resume  
- (Optional future: more dynamic sections using API or JSON)

---

### Stage 4 - Automation & CI/CD
- **4.1 Infrastructure as Code (Terraform)** – full IaC setup for S3, CloudFront, IAM, etc.  
- **4.2 CI/CD with GitHub Actions** – auto-deploy Hugo site + backend on commit  
- **4.3 Monitoring & Logging** – CloudWatch for Lambda + API Gateway  
- **4.4 Smoke Testing with Cypress**  
  - Run Cypress tests after deployment  
  - Test homepage loads, counter element is present  
  - Potential GitHub Actions integration step

---

### Stage 5 - Security Hardening 🛡️
> Learning DNSSEC and other security practices through hands-on experimentation.

- **5.1 DNSSEC**  
  - Placeholder: Enabled in Route 53 for domain integrity  
- **5.2 HTTPS Everywhere**  
  - Placeholder: Enforced with CloudFront + ACM cert  
- **5.3 S3 Bucket Policies**  
  - Placeholder: Block public access, use OAI or OAC  
- **5.4 IAM Role Minimization**  
  - Placeholder: Tight permissions on Lambda + GitHub deploy roles  
- **5.5 HTTP Security Headers**  
  - Placeholder: Use Lambda@Edge or CloudFront settings  
- **5.6 WAF / Bot Protection**  
  - Placeholder: AWS WAF for rate-limiting or bot filtering  
- **5.7 Vulnerability Scanning**  
  - Placeholder: Add static/dynamic scan step to CI (Snyk, CodeQL, etc.)  
- **5.8 Audit Logging**  
  - Placeholder: Enable CloudTrail + structured Lambda logs

---

## 🧠 AI/ML Extensions (Future Ideas)

> You’ve decided to finish the base version first, but here are the brainstormed ideas to return to later.

- **Interactive Q&A Resume Assistant**  
  - Visitors ask questions like "What’s your strongest project?"  
  - Powered by Bedrock (Claude/Titan) + vector search

- **Job-Aware Cover Letter Generator**  
  - Paste job listing → get a tailored blurb using your resume content

- **Daily Visitor Log Summarizer using LLM**  
  - Lambda sends Bedrock-generated summary of logs to you via email/SNS

- **Bot Detection or Anomaly Detection**  
  - Use SageMaker Random Cut Forest or Lookout for Metrics  
  - Block suspicious IPs with AWS WAF

- **Smart Forecasting or Traffic Clustering**  
  - Segment user behavior or predict future traffic with SageMaker

---
