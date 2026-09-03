.class public Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;
.super Ljava/lang/Object;
.source "EmailBatchSyncResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->message:Ljava/lang/String;

    return-void
.end method
