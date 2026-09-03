.class public Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;
.super Ljava/lang/Object;
.source "EmailBatchSyncResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;

.field private user_email_status:I


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 22
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;->id:I

    return p0
.end method

.method public getUser_email_status()I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;->user_email_status:I

    return p0
.end method

.method public setId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;->id:I

    return-void
.end method

.method public setUser_email_status(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse$Data;->user_email_status:I

    return-void
.end method
