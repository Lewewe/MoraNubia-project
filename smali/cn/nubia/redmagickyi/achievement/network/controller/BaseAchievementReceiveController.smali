.class public abstract Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseAchievementReceiveController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;",
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
    const-string v0, "BaseAchievementReceiveController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;
    .locals 1

    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "loginToken cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;->load()Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;

    move-result-object p0

    return-object p0
.end method

.method public receive(Ljava/lang/String;I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;
    .locals 2

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;-><init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$1;)V

    .line 22
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;->setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;->setUserAchievementId(I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method
