.class public final Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;
.super Ljava/lang/Object;
.source "ResourceUpgradeInfoBeans.java"


# instance fields
.field private expiredBundlePath:[Ljava/lang/String;

.field private newBundlePath:Ljava/lang/String;

.field private newVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newBundlePath:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newVersionName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->expiredBundlePath:[Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;
    .locals 2

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;

    return-object p0
.end method

.method public static isAvailable(Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newBundlePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newVersionName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getExpiredBundlePath()[Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->expiredBundlePath:[Ljava/lang/String;

    return-object p0
.end method

.method public getNewBundlePath()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newBundlePath:Ljava/lang/String;

    return-object p0
.end method

.method public getNewVersionName()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public setExpiredBundlePath([Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->expiredBundlePath:[Ljava/lang/String;

    return-void
.end method

.method public setNewBundlePath(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newBundlePath:Ljava/lang/String;

    return-void
.end method

.method public setNewVersionName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->newVersionName:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
