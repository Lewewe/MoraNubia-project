.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseNoticeListLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/NoticeListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;->type:I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;)I
    .locals 0

    .line 9
    iget p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;->type:I

    return p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;
    .locals 2

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController$1;)V

    .line 20
    const-class v1, Lcn/nubia/redmagickyi/network/model/NoticeListResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;->load()Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;

    move-result-object p0

    return-object p0
.end method
