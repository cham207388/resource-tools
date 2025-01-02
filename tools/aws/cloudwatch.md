# Cloudwatch

## Metrics Commands

| Command                        | Description                                                                                   | Example                                                                                                 |
|--------------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| `aws cloudwatch list-metrics`         | Lists available metrics.                                                                      | `aws cloudwatch list-metrics`                                                                      |
| `aws cloudwatch get-metric-data`      | Retrieves raw data points for a metric.                                                       | `aws cloudwatch get-metric-data --metric-data-queries file://queries.json`                         |
| `aws cloudwatch get-metric-statistics`| Retrieves statistics for a specified metric.                                                  | `aws cloudwatch get-metric-statistics --metric-name CPUUtilization --namespace AWS/EC2 ...`        |
| `aws cloudwatch put-metric-data`      | Publishes custom metric data points to CloudWatch.                                            | `aws cloudwatch put-metric-data --namespace MyNamespace --metric-name MyMetric --value 100`       |
| `aws cloudwatch put-dashboard`        | Creates or updates a CloudWatch dashboard.                                                    | `aws cloudwatch put-dashboard --dashboard-name MyDashboard --dashboard-body file://dashboard.json` |
| `aws cloudwatch get-dashboard`        | Retrieves the details of a specified CloudWatch dashboard.                                    | `aws cloudwatch get-dashboard --dashboard-name MyDashboard`                                       |
| `aws cloudwatch list-dashboards`      | Lists available CloudWatch dashboards.                                                        | `aws cloudwatch list-dashboards`                                                                  |
| `aws cloudwatch delete-dashboards`    | Deletes specified CloudWatch dashboards.                                                      | `aws cloudwatch delete-dashboards --dashboard-names MyDashboard`                                  |

## Logs Commands

| Command                             | Description                                                                                   | Example                                                                                                 |
|-------------------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| `awslocal logs create-log-group`    | Creates a new log group.                                                                      | `awslocal logs create-log-group --log-group-name my-log-group`                                          |
| `awslocal logs describe-log-groups` | Lists all log groups in CloudWatch.                                                           | `awslocal logs describe-log-groups`                                                                     |
| `awslocal logs delete-log-group`    | Deletes a specified log group.                                                                | `awslocal logs delete-log-group --log-group-name my-log-group`                                          |
| `awslocal logs create-log-stream`   | Creates a new log stream within a log group.                                                  | `awslocal logs create-log-stream --log-group-name my-log-group --log-stream-name my-log-stream`         |
| `awslocal logs describe-log-streams`| Lists all log streams within a specified log group.                                           | `awslocal logs describe-log-streams --log-group-name my-log-group`                                      |
| `awslocal logs put-log-events`      | Uploads log events to a log stream.                                                           | `awslocal logs put-log-events --log-group-name my-log-group --log-stream-name my-log-stream ...`        |
| `awslocal logs get-log-events`      | Retrieves log events from a log stream.                                                       | `awslocal logs get-log-events --log-group-name my-log-group --log-stream-name my-log-stream`            |
| `awslocal logs filter-log-events`   | Filters log events based on a specified pattern.                                              | `awslocal logs filter-log-events --log-group-name my-log-group --filter-pattern "ERROR"`                |
