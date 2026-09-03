.class public Lcom/zte/aigc/vo/OssConfig;
.super Ljava/lang/Object;
.source "OssConfig.java"


# instance fields
.field private arrivedTime:J

.field private bucketName:Ljava/lang/String;

.field private cloudToken:Lcom/zte/aigc/vo/CloudToken;

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
    iget-wide v0, p0, Lcom/zte/aigc/vo/OssConfig;->arrivedTime:J

    return-wide v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aigc/vo/OssConfig;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCloudToken()Lcom/zte/aigc/vo/CloudToken;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/aigc/vo/OssConfig;->cloudToken:Lcom/zte/aigc/vo/CloudToken;

    return-object p0
.end method

.method public getOssEndpoint()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aigc/vo/OssConfig;->ossEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aigc/vo/OssConfig;->tempPath:Ljava/lang/String;

    return-object p0
.end method

.method public setArrivedTime(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/zte/aigc/vo/OssConfig;->arrivedTime:J

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aigc/vo/OssConfig;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCloudToken(Lcom/zte/aigc/vo/CloudToken;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zte/aigc/vo/OssConfig;->cloudToken:Lcom/zte/aigc/vo/CloudToken;

    return-void
.end method

.method public setOssEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aigc/vo/OssConfig;->ossEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/zte/aigc/vo/OssConfig;->tempPath:Ljava/lang/String;

    return-void
.end method
