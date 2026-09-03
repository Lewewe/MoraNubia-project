.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseEmailBatchSyncController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;,
        Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private emailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private emailStatus:I

.field private loginToken:Ljava/lang/String;

.field private maxRetryTime:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 14
    const-string v0, "BaseEmailBatchSyncController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)I
    .locals 0

    .line 12
    iget p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->emailStatus:I

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/util/List;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->emailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->loginToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/lang/Integer;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->maxRetryTime:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
    .locals 2

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$1;)V

    .line 24
    const-class v1, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->load()Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    move-result-object p0

    return-object p0
.end method

.method public setMaxRetryTime(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->maxRetryTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public syncStatus(ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;"
        }
    .end annotation

    .line 28
    iput-object p2, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->loginToken:Ljava/lang/String;

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->emailStatus:I

    .line 30
    iput-object p3, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->emailList:Ljava/util/List;

    .line 31
    new-instance p1, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$1;)V

    .line 32
    const-class p2, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method
