.class public Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "SystemTimeLoadManager.java"


# instance fields
.field private systemTimeLoadController:Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;


# direct methods
.method public varargs constructor <init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;->isCanceled:Z

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;->systemTimeLoadController:Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;->cancel()V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 1

    .line 23
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;)V

    .line 37
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;->load()Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;->systemTimeLoadController:Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;

    return-void
.end method
