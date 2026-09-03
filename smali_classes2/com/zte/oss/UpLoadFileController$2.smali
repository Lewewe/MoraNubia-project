.class Lcom/zte/oss/UpLoadFileController$2;
.super Ljava/lang/Object;
.source "UpLoadFileController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/oss/UpLoadFileController;->doUploadFileRequestIndeed(Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;Lcom/zte/oss/entry/CloudToken;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/oss/UpLoadFileController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onFileUploadCallback:Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;

.field final synthetic val$uploadFile:Lcom/zte/oss/entry/UploadFile;


# direct methods
.method constructor <init>(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/UploadFile;Landroid/content/Context;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/zte/oss/UpLoadFileController$2;->this$0:Lcom/zte/oss/UpLoadFileController;

    iput-object p2, p0, Lcom/zte/oss/UpLoadFileController$2;->val$uploadFile:Lcom/zte/oss/entry/UploadFile;

    iput-object p3, p0, Lcom/zte/oss/UpLoadFileController$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/zte/oss/UpLoadFileController$2;->val$onFileUploadCallback:Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 164
    const-string v0, "/"

    const-string v2, "UpLoadFileController"

    .line 0
    const-string v3, "UploadFileToOss onFailure serviceException:"

    const-string v4, ","

    const-string v5, ",RawMessage"

    const-string v6, ",HostId"

    const-string v7, "UploadFileToOss onFailure ClientException:"

    const-string v8, ",RequestId"

    const-string v9, "ErrorCode"

    const-string v10, "UploadFileToOss oss_file_key:"

    const-string v11, "UploadFileToOss onFailure Exception:"

    const-string v12, "https://aigc.ztems.com/aigcapi/oss/sts?cloud_token="

    .line 164
    iget-object v13, v1, Lcom/zte/oss/UpLoadFileController$2;->this$0:Lcom/zte/oss/UpLoadFileController;

    invoke-static {v13}, Lcom/zte/oss/UpLoadFileController;->access$100(Lcom/zte/oss/UpLoadFileController;)Lcom/zte/oss/entry/OssConfig;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 170
    :try_start_0
    iget-object v15, v1, Lcom/zte/oss/UpLoadFileController$2;->val$uploadFile:Lcom/zte/oss/entry/UploadFile;

    invoke-virtual {v15}, Lcom/zte/oss/entry/UploadFile;->getFile()Ljava/io/File;

    move-result-object v15

    .line 171
    iget-object v14, v1, Lcom/zte/oss/UpLoadFileController$2;->val$uploadFile:Lcom/zte/oss/entry/UploadFile;

    invoke-virtual {v14}, Lcom/zte/oss/entry/UploadFile;->getFileType()I

    move-result v14

    if-nez v14, :cond_1

    .line 172
    iget-object v14, v1, Lcom/zte/oss/UpLoadFileController$2;->this$0:Lcom/zte/oss/UpLoadFileController;

    invoke-static {v14, v15}, Lcom/zte/oss/UpLoadFileController;->access$200(Lcom/zte/oss/UpLoadFileController;Ljava/io/File;)Ljava/io/File;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v14, :cond_0

    move-object v15, v14

    move-object/from16 v16, v15

    goto :goto_0

    :cond_0
    move-object/from16 v16, v14

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    .line 179
    :goto_0
    :try_start_1
    new-instance v14, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v11

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/zte/oss/entry/OssConfig;->getCloudToken()Lcom/zte/oss/entry/CloudToken;

    move-result-object v12

    invoke-virtual {v12}, Lcom/zte/oss/entry/CloudToken;->getToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&file_type=temp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v11}, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v11, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v11}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const/16 v12, 0x3a98

    .line 181
    invoke-virtual {v11, v12}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 182
    invoke-virtual {v11, v12}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/16 v12, 0x8

    .line 183
    invoke-virtual {v11, v12}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v12, 0x1

    .line 184
    invoke-virtual {v11, v12}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 185
    new-instance v12, Lcom/alibaba/sdk/android/oss/OSSClient;

    move-object/from16 v18, v7

    iget-object v7, v1, Lcom/zte/oss/UpLoadFileController$2;->val$context:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v13}, Lcom/zte/oss/entry/OssConfig;->getOssEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v7, v1, v14, v11}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/zte/oss/entry/OssConfig;->getTempPath()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/zte/oss/entry/OssConfig;->getCloudToken()Lcom/zte/oss/entry/CloudToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/oss/entry/CloudToken;->getUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {v13}, Lcom/zte/oss/entry/OssConfig;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v7, v0, v10}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    :try_start_4
    invoke-interface {v12, v1}, Lcom/alibaba/sdk/android/oss/OSS;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v13}, Lcom/zte/oss/entry/OssConfig;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v10, 0xe10

    invoke-interface {v12, v1, v0, v10, v11}, Lcom/alibaba/sdk/android/oss/OSS;->presignConstrainedObjectURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v14, v16

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 208
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    move-object/from16 v1, p0

    .line 217
    :try_start_6
    iget-object v0, v1, Lcom/zte/oss/UpLoadFileController$2;->this$0:Lcom/zte/oss/UpLoadFileController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/oss/UpLoadFileController;->access$102(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/OssConfig;)Lcom/zte/oss/entry/OssConfig;

    goto :goto_2

    :cond_3
    move-object/from16 v1, p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, v1, Lcom/zte/oss/UpLoadFileController$2;->this$0:Lcom/zte/oss/UpLoadFileController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/oss/UpLoadFileController;->access$102(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/OssConfig;)Lcom/zte/oss/entry/OssConfig;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    :goto_2
    move-object/from16 v14, v16

    const/4 v2, 0x0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v14, v16

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v17, v11

    :goto_4
    move-object/from16 v14, v16

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v14, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v17, v11

    const/4 v14, 0x0

    .line 222
    :goto_5
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v14, :cond_5

    .line 227
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 229
    :cond_5
    iget-object v0, v1, Lcom/zte/oss/UpLoadFileController$2;->val$onFileUploadCallback:Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 230
    invoke-interface {v0, v1}, Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;->onResult(Ljava/lang/String;)V

    goto :goto_8

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v14, :cond_6

    .line 227
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 229
    :cond_6
    iget-object v1, v1, Lcom/zte/oss/UpLoadFileController$2;->val$onFileUploadCallback:Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 230
    invoke-interface {v1, v2}, Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;->onResult(Ljava/lang/String;)V

    .line 232
    :cond_7
    throw v0

    :cond_8
    const/4 v2, 0x0

    move-object v14, v2

    :goto_7
    if-eqz v14, :cond_9

    .line 227
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 229
    :cond_9
    iget-object v0, v1, Lcom/zte/oss/UpLoadFileController$2;->val$onFileUploadCallback:Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;

    if-eqz v0, :cond_a

    .line 230
    invoke-interface {v0, v2}, Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;->onResult(Ljava/lang/String;)V

    :cond_a
    :goto_8
    return-void
.end method
