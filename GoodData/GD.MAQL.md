**M**ultidimensional **A**nalytical **Q**uery **L**anguage - used to define calulation logic for different measures. 

[Getting Started with MAQL in GoodData.CN](https://university.gooddata.com/)

SQL-like syntax over Logical Data Model
- no joins


```sql
SELECT aggregation_function({fact/dataset/fact_column})
```

## Aggregation functions

[Aggregation Functions | GoodData Cloud Native](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/)

- [AVG](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/avg/)
- [APPROXIMATE_COUNT (Verica only)](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/approximate_count/) / [COUNT](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/count/)
- [FIRST_VALUE](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/first/) / [LAST_VALUE](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/last/)
- [MIN](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/min/) / [MAX](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/max/)
- [MEDIAN](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/median/)
- [SUM](https://www.gooddata.com/developers/cloud-native/doc/cloud/create-metrics/maql/aggregation/sum/)

## Using an API

```bash
curl http://localhost:3000/api/entities/workspaces/demo/metrics \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X POST \
  -d '{ 
    "data": {
       "id": "Metric1",
       "type": "metric",
       "attributes": {
         "title": "Sum of Campaign Spend",
         "description": "Sum of total campaign spend",
         "content": {
           "format": "0.00",
           "maql": "SELECT SUM({fact/campaign_channels.spend})"
          }
        }
      }
    }'
```



Metrika nadefi