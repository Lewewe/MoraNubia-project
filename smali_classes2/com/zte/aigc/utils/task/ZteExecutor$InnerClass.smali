.class Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;
.super Ljava/lang/Object;
.source "ZteExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/utils/task/ZteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClass"
.end annotation


# static fields
.field static sDownloadPool:Lcom/zte/aigc/utils/task/ZteExecutor;

.field static sImageDownloadPool:Lcom/zte/aigc/utils/task/ZteExecutor;

.field static sLongPool:Lcom/zte/aigc/utils/task/ZteExecutor;

.field static sShortPool:Lcom/zte/aigc/utils/task/ZteExecutor;

.field static sSinglePool:Lcom/zte/aigc/utils/task/ZteExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 103
    new-instance v6, Lcom/zte/aigc/utils/task/ZteExecutor;

    const-wide/16 v3, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJLcom/zte/aigc/utils/task/ZteExecutor$1;)V

    sput-object v6, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sDownloadPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    .line 105
    new-instance v0, Lcom/zte/aigc/utils/task/ZteExecutor;

    const-wide/16 v10, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJLcom/zte/aigc/utils/task/ZteExecutor$1;)V

    sput-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sLongPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    .line 107
    new-instance v0, Lcom/zte/aigc/utils/task/ZteExecutor;

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJLcom/zte/aigc/utils/task/ZteExecutor$1;)V

    sput-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sShortPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    .line 109
    new-instance v0, Lcom/zte/aigc/utils/task/ZteExecutor;

    const/4 v8, 0x3

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJLcom/zte/aigc/utils/task/ZteExecutor$1;)V

    sput-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sImageDownloadPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    .line 111
    new-instance v0, Lcom/zte/aigc/utils/task/ZteExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJLcom/zte/aigc/utils/task/ZteExecutor$1;)V

    sput-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sSinglePool:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
