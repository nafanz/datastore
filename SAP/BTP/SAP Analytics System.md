# System

[Introduction to SAP Analytics Cloud | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/6ea0ee725a624eebbd0012a267e7b7f9.html)

- [[#Data Preparation]]
	- [[#Data Connections]]
	- [[#Metadata]]
- [[#Data Modeller]]
	- [[#Dimensions]]
	- [[#Data Transformation]]
	- [[#Model Types]]
- [[#Story Explorer]]
- [[#Data Analyzer]]
- [[#Presentation]]
- [[#Planning]]
- [[#Predictive Analysis]]


## Data Preparation
[Data Preparation and Wrangling (Datasets and Models) | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/588233d1e7c94ce4a45039b9b63d9cd9.html)

**Lifecycle of data in SAC**: Data used in SAC can be located either on a cloud server, on a physical server at the customer’s location, or a combination of the two. Regardless of where the data is located, SAP Analytics Cloud provides data preparation, simulation, forecasting, and storytelling capabilities for the data.

Data Implementation Workflow:
1. Identify your data sources
2. Decide on whether to acquire data or use live data. Consider performance/security/planning/smart predict/ammount of data stored in a story/is data wrangling needed
3. Connect to SAC
4. Create live models for live data
5. IF data acquisition: Create public dimensions and import master data (create models and import transaction data)
6. Create stories and analytic apps

### Data Connections
[Data Connections | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/bdf055159cbb4f36b26c93ccb0c56066.html)
[Data Connectivity | SAP Analytics Cloud | SAP Community](https://community.sap.com/topics/cloud-analytics/connectivity)
[SAP Analytics Cloud Connectivity Guidelines - SAP Analytics Cloud - Support Wiki](https://wiki.scn.sap.com/wiki/display/BOC/SAP+Analytics+Cloud+Connectivity+Guidelines)
[SAP BTP - SAC Connectivity Customer](https://d.dam.sap.com/a/aEBKQNd/SAP_BTP-SAC_Connectivity_Customer_02-11.pdf)

- **Live Connections** (data stored exclusively in customer's database, security inherited, virtual models created in SAC)
	- Direct Connection
		- Cross-Origin Resource Sharing (CORS)
		- End-to-end SSO via SAML
	- Tunnel Connection
		- Some of data exposed, CORS is not required
		- Not supported for live connection to universes
- **Import Data Connections** (data imported (replicated) from customer's database)
	- Data duplicated (and Persistent Model saved)
	- Security in SAC controls data access
	- Leverages full SAP Analytics Cloud capabilities such as planning and smart predict
	- Best for data preparation and data blending scenarios
- Export Data Connections

| Type of User | Area of Expertise |
| --- | --- |
| SAP Analytics Cloud system owner | SAP Analytics Cloud settings, such as SAML 2.0 settings, users and roles management, and connection settings. |
| Data source expert | Connectivity layer and security (SAP HANA, SAP BW or SAP BW/4HANA, SAP S/4HANA, and so on). |
| Network expert | Proxy, firewall, DNS server, and so on. |
| Security expert | SAML 2.0, your organization's Identity Provider (IdP), SSL certificates, and so on. |
| Information system architect | General architecture topics. |
| Application expert | SAP or non-SAP, depending on your data sources: connectivity, security, modeling, and so on.|



The **SAP Analytics Cloud Agent** is an on-premise data connectivity component that is used to:
- Import data connections from SAP Business Planning and Consolidation, version for Microsoft Platform (BPC MS).
- Import data connections from SAP Business Warehouse (BW).
- Import data connections from SAP Universes.
- Import data connections from SAP ERP.
- Import data connections to an SQL database.
- Import data from a file server.


### Metadata

**Connection Definition** (No user and password are stored in SAC live connection description)
**Model Definition** (Data or dimension value from data sources are not stored in SAP Analytics Cloud, except values of filters and input controls used in query, if any)
**Story Definition** (Data or dimension value from data sources are not stored in SAP Analytics Cloud, except values of filters and input controls used in query, if any)

## Data Modeller
[Learn About Models | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/c10af00a90cd43b6894f6767a47dff17.html)

### Dimensions


### Data Transformation

### Model Types
SAP Analytics Cloud recognizes the following styles of models:
- Planning Model
	- preconfigured with dimensions for time and version
	- offer support for multi-currency and security features at the level of both model and dimension
	- when working with a planning model in a story, users with planning privileges can create their own versions of model data
	- users can also write data to the model by typing new values, copying and pasting data, and using data actions
- Analytics Model
	- unlike the planning model, the analytics model does not support versions and does not require a time dimension
	- used for stories and analytic applications that are read-only, for data presentation and analysis purposes

| | Datasets |  Planning models | Analytic models |
| --- | --- | --- | --- |
| Use case | Ad-hoc  BI Smart Predict | Planning | Planning |
| Data updates | One time | Scheduled | Scheduled |
| Global | Global & Story specific | Global | Global |
| Tables | One data table | Dimensions & data | Dimensions & data |
| Live / Import  | Import | Import | Live & Import |
| Dimensions required | Not applicable | Account, Category & Time | Account |
| Public dimensions | Not applicable | Public & Private | Public & Private |





## Story Explorer
[Data Visualization (Stories) | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/29e0feaf17584e118ef30e6102008224.html)
[Stories, Reporting, and Data Exploration | SAP Analytics Cloud | SAP Community](https://community.sap.com/topics/cloud-analytics/stories-reporting-exploration)


## Data Analyzer
[Data Analyzer | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/3bd79ad3e58442e7a5499fd9c547cbb3.html)
[Launch Data Analyzer and Start Ad-Hoc Analysis | SAP Help Portal](https://help.sap.com/docs/SAP_ANALYTICS_CLOUD/00f68c2e08b941f081002fd3691d86a7/67afbf41f24f4cb48ca7bd72d5e40d94.html)

Vision: “One standalone exploration experience for ad-hoc analysis with support of all key data sources and the ability to save, share and export the results independently.”
- Standalone with easy access from the side navigation bar
- Save insights, share and publish
- Contextual exploration from story and application
- Explore data conversationally, visually, or within a table


## Presentation

- SAP Digital Boardroom
- SAC Cloud Mobile
- Scheduling delivery


## Planning


## Predictive Analysis

All of these (except Smart Discovery and Smart Insights) are available both for **Acquired Data** and **Live Data**:
- **Time Series Forecasting**
	- use trained dataset to build a model that can apply on target dataset
	- train a model based on a data file
	- apply the model to the target rpospects
	- use the output to predict next year sales (for example)
	- make adjustments if needed
	- write to a planning model
- **Search to Insights**
	- request data in natural language by typing a question about your data
	- case Live Data supported all live connections except for SAP HANA Cloud and SAP DWC
- **Smart Grouping**
	- scatter plot chart -> enable smart grouping
	- automaticallly creates clusters using regression
- **Smart Insights** (not available for Live Data with small exception)
	- right-click chart/data table point -> system adds context (like total salary)
	- SAC can help to determine what are key contributors to that total
	- case Live Data only supported for SAP HANA on-premise
- **Smart Predict**
	- run a canned program to project out months
	- time series chart: Add -> Forecast - choose Atomatic / Advanced option
	- table: More -> Predictive Forecast - to publish to a planning model
	- supported for datasets and planning models but not for analytic models
	- case Live Data only supported for SAP HANA on-premise
- **Smart Discovery** (not available with Live Data)
	- create a story automatically
	- supervised machine learniong using regression for measures and offers cassification if you select a dimension
