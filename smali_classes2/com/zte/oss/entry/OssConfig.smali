.class public Lcom/zte/oss/entry/OssConfig;
.super Ljava/lang/Object;
.source "OssConfig.java"


# instance fields
.field private arrivedTime:J

.field private bucketName:Ljava/lang/String;

.field private cloudToken:Lcom/zte/oss/entry/CloudToken;

.field private ossEndpoint:Ljava/lang/String;

.field private tempPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrivedTime()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/zte/oss/entry/OssConfig;->arrivedTime:J

    return-wide v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/oss/entry/OssConfig;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCloudToken()Lcom/zte/oss/entry/CloudToken;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/oss/entry/OssConfig;->cloudToken:Lcom/zte/oss/entry/CloudToken;

    return-object p0
.end method

.method public getOssEndpoint()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/oss/entry/OssConfig;->ossEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/oss/entry/OssConfig;->tempPath:Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/zte/oss/entry/OssConfig;->ossEndpoint:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/oss/entry/OssConfig;->bucketName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zte/oss/entry/OssConfig;->tempPath:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setArrivedTime(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/zte/oss/entry/OssConfig;->arrivedTime:J

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/oss/entry/OssConfig;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCloudToken(Lcom/zte/oss/entry/CloudToken;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zte/oss/entry/OssConfig;->cloudToken:Lcom/zte/oss/entry/CloudToken;

    return-void
.end method

.method public setOssEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/oss/entry/OssConfig;->ossEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/zte/oss/entry/OssConfig;->tempPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OssConfig{ossEndpoint=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/oss/entry/OssConfig;->ossEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', bucketName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/oss/entry/OssConfig;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tempPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/oss/entry/OssConfig;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', arrivedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/oss/entry/OssConfig;->arrivedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cloudToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/oss/entry/OssConfig;->cloudToken:Lcom/zte/oss/entry/CloudToken;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
