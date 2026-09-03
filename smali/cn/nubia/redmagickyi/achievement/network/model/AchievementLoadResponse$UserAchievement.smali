.class public Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;
.super Ljava/lang/Object;
.source "AchievementLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserAchievement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;
    }
.end annotation


# instance fields
.field private achievement:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

.field private achievement_point:I

.field private create_time:J

.field private receive_state:I

.field private receive_time:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

.field private user_achievement_id:I

.field private user_achievement_point:I


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;IIILcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->this$0:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->user_achievement_id:I

    .line 54
    iput p4, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->achievement_point:I

    .line 55
    iput p3, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->user_achievement_point:I

    .line 56
    iput-object p5, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->achievement:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    .line 57
    iput p6, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->receive_state:I

    .line 58
    iput-wide p7, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->receive_time:J

    .line 59
    iput-wide p9, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->create_time:J

    return-void
.end method


# virtual methods
.method public getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->achievement:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    return-object p0
.end method

.method public getAchievement_point()I
    .locals 0

    .line 79
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->achievement_point:I

    return p0
.end method

.method public getCreate_time()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->create_time:J

    return-wide v0
.end method

.method public getReceive_state()I
    .locals 0

    .line 95
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->receive_state:I

    return p0
.end method

.method public getReceive_time()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->receive_time:J

    return-wide v0
.end method

.method public getUser_achievement_id()I
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->user_achievement_id:I

    return p0
.end method

.method public getUser_achievement_point()I
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->user_achievement_point:I

    return p0
.end method

.method public setAchievement(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->achievement:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    return-void
.end method

.method public setAchievement_point(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->achievement_point:I

    return-void
.end method

.method public setCreate_time(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->create_time:J

    return-void
.end method

.method public setReceive_state(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->receive_state:I

    return-void
.end method

.method public setReceive_time(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->receive_time:J

    return-void
.end method

.method public setUser_achievement_id(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->user_achievement_id:I

    return-void
.end method

.method public setUser_achievement_point(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->user_achievement_point:I

    return-void
.end method
