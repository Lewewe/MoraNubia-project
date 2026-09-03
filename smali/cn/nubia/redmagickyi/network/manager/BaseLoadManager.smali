.class public abstract Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.super Ljava/lang/Object;
.source "BaseLoadManager.java"


# instance fields
.field protected volatile isCanceled:Z

.field private managers:[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;


# direct methods
.method public varargs constructor <init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->managers:[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->isCanceled:Z

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->managers:[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    if-eqz p0, :cond_0

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 29
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public load()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->isCanceled:Z

    return-void
.end method

.method protected next()V
    .locals 3

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->managers:[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    if-eqz p0, :cond_0

    .line 19
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 20
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
