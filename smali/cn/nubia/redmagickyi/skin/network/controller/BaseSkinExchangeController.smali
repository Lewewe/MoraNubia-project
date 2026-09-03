.class public abstract Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseSkinExchangeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;,
        Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 13
    const-string v0, "BaseSkinExchangeController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exchangeFromAchievement(Ljava/lang/String;I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;
    .locals 2

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;-><init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$1;)V

    .line 22
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;->setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;->setId(I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$AchievementTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public exchangeFromActivity(Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;
    .locals 2

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;-><init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$1;)V

    .line 28
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->setId(I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->setCode(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;->load()Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

    move-result-object p0

    return-object p0
.end method

.method public load()Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;
    .locals 1

    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "loginToken cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
