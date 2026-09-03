.class public Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
.super Ljava/lang/Object;
.source "DownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appendId:Z

.field private downloadDirPath:Ljava/lang/String;

.field private downloadStatus:I

.field private fileType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isProgressAppend:Z

.field private listener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

.field private md5sum:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 477
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->downloadStatus:I

    .line 479
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->appendId:Z

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->isProgressAppend:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->downloadDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->md5sum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->fileType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)I
    .locals 0

    .line 472
    iget p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->downloadStatus:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Z
    .locals 0

    .line 472
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->appendId:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Z
    .locals 0

    .line 472
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->isProgressAppend:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;
    .locals 0

    .line 472
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->listener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    return-object p0
.end method


# virtual methods
.method public build()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 2

    .line 556
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;)V

    return-object v0
.end method

.method public setAppendId(Z)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 535
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->appendId:Z

    return-object p0
.end method

.method public setDownloadDirPath(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 503
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->downloadDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadStatus(I)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 511
    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->downloadStatus:I

    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 527
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->fileType:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 487
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setIsProgressAppend(Z)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->isProgressAppend:Z

    return-object p0
.end method

.method public setListener(Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 551
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->listener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    return-object p0
.end method

.method public setMd5sum(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 519
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->md5sum:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 495
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
