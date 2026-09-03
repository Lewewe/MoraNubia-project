.class public abstract Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseAchievementReportController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private maxRetryCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 14
    const-string v0, "BaseAchievementReportController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;)Ljava/lang/Integer;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;
    .locals 1

    .line 19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "loginToken cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->load()Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    move-result-object p0

    return-object p0
.end method

.method public report(Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;
    .locals 2

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;-><init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$1;)V

    .line 29
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->setBean(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;
    .locals 0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method
