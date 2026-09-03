.class public abstract Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseAchievementLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$Task;
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

.field private maxRetryCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 13
    const-string v0, "BaseAchievementLoadController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;)Ljava/lang/Integer;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;
    .locals 1

    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "loginToken cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;
    .locals 2

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$Task;-><init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$1;)V

    .line 27
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$Task;->setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$Task;

    move-result-object p1

    const-class v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->load()Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    move-result-object p0

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;
    .locals 0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method
