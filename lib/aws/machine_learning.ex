# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.MachineLearning do
  @moduledoc """
  Definition of the public APIs exposed by Amazon Machine Learning
  """

  @doc """
  Generates predictions for a group of observations. The observations to
  process exist in one or more data files referenced by a `DataSource`. This
  operation creates a new `BatchPrediction`, and uses an `MLModel` and the
  data files referenced by the `DataSource` as information sources.

  `CreateBatchPrediction` is an asynchronous operation. In response to
  `CreateBatchPrediction`, Amazon Machine Learning (Amazon ML) immediately
  returns and sets the `BatchPrediction` status to `PENDING`. After the
  `BatchPrediction` completes, Amazon ML sets the status to `COMPLETED`.

  You can poll for status updates by using the `GetBatchPrediction` operation
  and checking the `Status` parameter of the result. After the `COMPLETED`
  status appears, the results are available in the location specified by the
  `OutputUri` parameter.
  """
  def create_batch_prediction(client, input, options \\ []) do
    request(client, "CreateBatchPrediction", input, options)
  end

  @doc """
  Creates a `DataSource` object from an [ Amazon Relational Database
  Service](http://aws.amazon.com/rds/) (Amazon RDS). A `DataSource`
  references data that can be used to perform `CreateMLModel`,
  `CreateEvaluation`, or `CreateBatchPrediction` operations.

  `CreateDataSourceFromRDS` is an asynchronous operation. In response to
  `CreateDataSourceFromRDS`, Amazon Machine Learning (Amazon ML) immediately
  returns and sets the `DataSource` status to `PENDING`. After the
  `DataSource` is created and ready for use, Amazon ML sets the `Status`
  parameter to `COMPLETED`. `DataSource` in `COMPLETED` or `PENDING` status
  can only be used to perform `CreateMLModel`, `CreateEvaluation`, or
  `CreateBatchPrediction` operations.

  If Amazon ML cannot accept the input source, it sets the `Status` parameter
  to `FAILED` and includes an error message in the `Message` attribute of the
  `GetDataSource` operation response.
  """
  def create_data_source_from_r_d_s(client, input, options \\ []) do
    request(client, "CreateDataSourceFromRDS", input, options)
  end

  @doc """
  Creates a `DataSource` from [Amazon
  Redshift](http://aws.amazon.com/redshift/). A `DataSource` references data
  that can be used to perform either `CreateMLModel`, `CreateEvaluation` or
  `CreateBatchPrediction` operations.

  `CreateDataSourceFromRedshift` is an asynchronous operation. In response to
  `CreateDataSourceFromRedshift`, Amazon Machine Learning (Amazon ML)
  immediately returns and sets the `DataSource` status to `PENDING`. After
  the `DataSource` is created and ready for use, Amazon ML sets the `Status`
  parameter to `COMPLETED`. `DataSource` in `COMPLETED` or `PENDING` status
  can only be used to perform `CreateMLModel`, `CreateEvaluation`, or
  `CreateBatchPrediction` operations.

  If Amazon ML cannot accept the input source, it sets the `Status` parameter
  to `FAILED` and includes an error message in the `Message` attribute of the
  `GetDataSource` operation response.

  The observations should exist in the database hosted on an Amazon Redshift
  cluster and should be specified by a `SelectSqlQuery`. Amazon ML executes [
  Unload](http://docs.aws.amazon.com/redshift/latest/dg/t_Unloading_tables.html)
  command in Amazon Redshift to transfer the result set of `SelectSqlQuery`
  to `S3StagingLocation.`

  After the `DataSource` is created, it's ready for use in evaluations and
  batch predictions. If you plan to use the `DataSource` to train an
  `MLModel`, the `DataSource` requires another item -- a recipe. A recipe
  describes the observation variables that participate in training an
  `MLModel`. A recipe describes how each input variable will be used in
  training. Will the variable be included or excluded from training? Will the
  variable be manipulated, for example, combined with another variable or
  split apart into word combinations? The recipe provides answers to these
  questions. For more information, see the Amazon Machine Learning Developer
  Guide.
  """
  def create_data_source_from_redshift(client, input, options \\ []) do
    request(client, "CreateDataSourceFromRedshift", input, options)
  end

  @doc """
  Creates a `DataSource` object. A `DataSource` references data that can be
  used to perform `CreateMLModel`, `CreateEvaluation`, or
  `CreateBatchPrediction` operations.

  `CreateDataSourceFromS3` is an asynchronous operation. In response to
  `CreateDataSourceFromS3`, Amazon Machine Learning (Amazon ML) immediately
  returns and sets the `DataSource` status to `PENDING`. After the
  `DataSource` is created and ready for use, Amazon ML sets the `Status`
  parameter to `COMPLETED`. `DataSource` in `COMPLETED` or `PENDING` status
  can only be used to perform `CreateMLModel`, `CreateEvaluation` or
  `CreateBatchPrediction` operations.

  If Amazon ML cannot accept the input source, it sets the `Status` parameter
  to `FAILED` and includes an error message in the `Message` attribute of the
  `GetDataSource` operation response.

  The observation data used in a `DataSource` should be ready to use; that
  is, it should have a consistent structure, and missing data values should
  be kept to a minimum. The observation data must reside in one or more CSV
  files in an Amazon Simple Storage Service (Amazon S3) bucket, along with a
  schema that describes the data items by name and type. The same schema must
  be used for all of the data files referenced by the `DataSource`.

  After the `DataSource` has been created, it's ready to use in evaluations
  and batch predictions. If you plan to use the `DataSource` to train an
  `MLModel`, the `DataSource` requires another item: a recipe. A recipe
  describes the observation variables that participate in training an
  `MLModel`. A recipe describes how each input variable will be used in
  training. Will the variable be included or excluded from training? Will the
  variable be manipulated, for example, combined with another variable, or
  split apart into word combinations? The recipe provides answers to these
  questions. For more information, see the [Amazon Machine Learning Developer
  Guide](http://docs.aws.amazon.com/machine-learning/latest/dg).
  """
  def create_data_source_from_s3(client, input, options \\ []) do
    request(client, "CreateDataSourceFromS3", input, options)
  end

  @doc """
  Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated on a
  set of observations associated to a `DataSource`. Like a `DataSource` for
  an `MLModel`, the `DataSource` for an `Evaluation` contains values for the
  Target Variable. The `Evaluation` compares the predicted result for each
  observation to the actual outcome and provides a summary so that you know
  how effective the `MLModel` functions on the test data. Evaluation
  generates a relevant performance metric such as BinaryAUC, RegressionRMSE
  or MulticlassAvgFScore based on the corresponding `MLModelType`: `BINARY`,
  `REGRESSION` or `MULTICLASS`.

  `CreateEvaluation` is an asynchronous operation. In response to
  `CreateEvaluation`, Amazon Machine Learning (Amazon ML) immediately returns
  and sets the evaluation status to `PENDING`. After the `Evaluation` is
  created and ready for use, Amazon ML sets the status to `COMPLETED`.

  You can use the `GetEvaluation` operation to check progress of the
  evaluation during the creation operation.
  """
  def create_evaluation(client, input, options \\ []) do
    request(client, "CreateEvaluation", input, options)
  end

  @doc """
  Creates a new `MLModel` using the data files and the recipe as information
  sources.

  An `MLModel` is nearly immutable. Users can only update the `MLModelName`
  and the `ScoreThreshold` in an `MLModel` without creating a new `MLModel`.

  `CreateMLModel` is an asynchronous operation. In response to
  `CreateMLModel`, Amazon Machine Learning (Amazon ML) immediately returns
  and sets the `MLModel` status to `PENDING`. After the `MLModel` is created
  and ready for use, Amazon ML sets the status to `COMPLETED`.

  You can use the `GetMLModel` operation to check progress of the `MLModel`
  during the creation operation.

  `CreateMLModel` requires a `DataSource` with computed statistics, which can
  be created by setting `ComputeStatistics` to `true` in
  `CreateDataSourceFromRDS`, `CreateDataSourceFromS3`, or
  `CreateDataSourceFromRedshift` operations.
  """
  def create_m_l_model(client, input, options \\ []) do
    request(client, "CreateMLModel", input, options)
  end

  @doc """
  Creates a real-time endpoint for the `MLModel`. The endpoint contains the
  URI of the `MLModel`; that is, the location to send real-time prediction
  requests for the specified `MLModel`.
  """
  def create_realtime_endpoint(client, input, options \\ []) do
    request(client, "CreateRealtimeEndpoint", input, options)
  end

  @doc """
  Assigns the DELETED status to a `BatchPrediction`, rendering it unusable.

  After using the `DeleteBatchPrediction` operation, you can use the
  `GetBatchPrediction` operation to verify that the status of the
  `BatchPrediction` changed to DELETED.

  **Caution:** The result of the `DeleteBatchPrediction` operation is
  irreversible.
  """
  def delete_batch_prediction(client, input, options \\ []) do
    request(client, "DeleteBatchPrediction", input, options)
  end

  @doc """
  Assigns the DELETED status to a `DataSource`, rendering it unusable.

  After using the `DeleteDataSource` operation, you can use the
  `GetDataSource` operation to verify that the status of the `DataSource`
  changed to DELETED.

  **Caution:** The results of the `DeleteDataSource` operation are
  irreversible.
  """
  def delete_data_source(client, input, options \\ []) do
    request(client, "DeleteDataSource", input, options)
  end

  @doc """
  Assigns the `DELETED` status to an `Evaluation`, rendering it unusable.

  After invoking the `DeleteEvaluation` operation, you can use the
  `GetEvaluation` operation to verify that the status of the `Evaluation`
  changed to `DELETED`.

  **Caution:** The results of the `DeleteEvaluation` operation are
  irreversible.
  """
  def delete_evaluation(client, input, options \\ []) do
    request(client, "DeleteEvaluation", input, options)
  end

  @doc """
  Assigns the DELETED status to an `MLModel`, rendering it unusable.

  After using the `DeleteMLModel` operation, you can use the `GetMLModel`
  operation to verify that the status of the `MLModel` changed to DELETED.

  **Caution:** The result of the `DeleteMLModel` operation is irreversible.
  """
  def delete_m_l_model(client, input, options \\ []) do
    request(client, "DeleteMLModel", input, options)
  end

  @doc """
  Deletes a real time endpoint of an `MLModel`.
  """
  def delete_realtime_endpoint(client, input, options \\ []) do
    request(client, "DeleteRealtimeEndpoint", input, options)
  end

  @doc """
  Returns a list of `BatchPrediction` operations that match the search
  criteria in the request.
  """
  def describe_batch_predictions(client, input, options \\ []) do
    request(client, "DescribeBatchPredictions", input, options)
  end

  @doc """
  Returns a list of `DataSource` that match the search criteria in the
  request.
  """
  def describe_data_sources(client, input, options \\ []) do
    request(client, "DescribeDataSources", input, options)
  end

  @doc """
  Returns a list of `DescribeEvaluations` that match the search criteria in
  the request.
  """
  def describe_evaluations(client, input, options \\ []) do
    request(client, "DescribeEvaluations", input, options)
  end

  @doc """
  Returns a list of `MLModel` that match the search criteria in the request.
  """
  def describe_m_l_models(client, input, options \\ []) do
    request(client, "DescribeMLModels", input, options)
  end

  @doc """
  Returns a `BatchPrediction` that includes detailed metadata, status, and
  data file information for a `Batch Prediction` request.
  """
  def get_batch_prediction(client, input, options \\ []) do
    request(client, "GetBatchPrediction", input, options)
  end

  @doc """
  Returns a `DataSource` that includes metadata and data file information, as
  well as the current status of the `DataSource`.

  `GetDataSource` provides results in normal or verbose format. The verbose
  format adds the schema description and the list of files pointed to by the
  DataSource to the normal format.
  """
  def get_data_source(client, input, options \\ []) do
    request(client, "GetDataSource", input, options)
  end

  @doc """
  Returns an `Evaluation` that includes metadata as well as the current
  status of the `Evaluation`.
  """
  def get_evaluation(client, input, options \\ []) do
    request(client, "GetEvaluation", input, options)
  end

  @doc """
  Returns an `MLModel` that includes detailed metadata, and data source
  information as well as the current status of the `MLModel`.

  `GetMLModel` provides results in normal or verbose format.
  """
  def get_m_l_model(client, input, options \\ []) do
    request(client, "GetMLModel", input, options)
  end

  @doc """
  Generates a prediction for the observation using the specified `ML Model`.

  <note><title>Note</title> Not all response parameters will be populated.
  Whether a response parameter is populated depends on the type of model
  requested.

  </note>
  """
  def predict(client, input, options \\ []) do
    request(client, "Predict", input, options)
  end

  @doc """
  Updates the `BatchPredictionName` of a `BatchPrediction`.

  You can use the `GetBatchPrediction` operation to view the contents of the
  updated data element.
  """
  def update_batch_prediction(client, input, options \\ []) do
    request(client, "UpdateBatchPrediction", input, options)
  end

  @doc """
  Updates the `DataSourceName` of a `DataSource`.

  You can use the `GetDataSource` operation to view the contents of the
  updated data element.
  """
  def update_data_source(client, input, options \\ []) do
    request(client, "UpdateDataSource", input, options)
  end

  @doc """
  Updates the `EvaluationName` of an `Evaluation`.

  You can use the `GetEvaluation` operation to view the contents of the
  updated data element.
  """
  def update_evaluation(client, input, options \\ []) do
    request(client, "UpdateEvaluation", input, options)
  end

  @doc """
  Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.

  You can use the `GetMLModel` operation to view the contents of the updated
  data element.
  """
  def update_m_l_model(client, input, options \\ []) do
    request(client, "UpdateMLModel", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "machinelearning"}
    host = get_host("machinelearning", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AmazonML_20141212.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
