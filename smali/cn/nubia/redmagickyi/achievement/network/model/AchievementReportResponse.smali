.class public Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;
.super Ljava/lang/Object;
.source "AchievementReportResponse.java"


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 9
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->data:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->data:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;->message:Ljava/lang/String;

    return-void
.end method
