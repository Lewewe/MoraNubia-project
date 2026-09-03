.class public Lcn/nubia/mediaeditor/local/VideoEditorSource;
.super Lcn/nubia/mediaeditor/local/VideoSourceBase;
.source "VideoEditorSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEditorSource"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReadTask:Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcn/nubia/mediaeditor/local/VideoSourceBase;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mUri:Landroid/net/Uri;

    .line 29
    new-instance p1, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;

    invoke-direct {p1, p0}, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;-><init>(Lcn/nubia/mediaeditor/local/VideoEditorSource;)V

    iput-object p1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mReadTask:Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcn/nubia/mediaeditor/local/VideoSourceBase;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mPath:Ljava/lang/String;

    .line 23
    new-instance p1, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;

    invoke-direct {p1, p0}, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;-><init>(Lcn/nubia/mediaeditor/local/VideoEditorSource;)V

    iput-object p1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mReadTask:Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/mediaeditor/local/VideoEditorSource;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/mediaeditor/local/VideoEditorSource;)Landroid/net/Uri;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mUri:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mReadTask:Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;

    const-string v1, "VideoLocalSource"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    return-void
.end method
