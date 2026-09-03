.class public Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;
.super Ljava/lang/Object;
.source "AchievementOnlineDataManager.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setAchievements(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->instance:Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->instance:Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    .line 28
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->instance:Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    return-object v0
.end method

.method private queryTotalAchievements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method private transform(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 225
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getSortIndex()I

    move-result v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getSortIndex()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 226
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 228
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 230
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementBackgroundCompletePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementBackgroundUndonePath(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getCompleteColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setUndoneColor(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 235
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconUndonePath()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconCompletePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementIconUndonePath(Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    goto :goto_0

    .line 248
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 251
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementBackgroundUndonePath(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getCompleteColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setUndoneColor(Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_4
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 260
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementBackgroundUndonePath(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getCompleteColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setUndoneColor(Ljava/lang/String;)V

    :cond_5
    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 267
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isAchievementCanReceive()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryAchievements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 85
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public parseAchievementsResponse(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
    .locals 8

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;-><init>()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getData()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager$1;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager$1;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    move v2, p0

    .line 118
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 119
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    .line 121
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getUser_achievement_point()I

    move-result v4

    if-nez v4, :cond_0

    .line 123
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement_point()I

    move-result v4

    .line 125
    :cond_0
    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 127
    new-instance v4, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;-><init>(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)V

    .line 128
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getUser_achievement_id()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setUserAchievementId(I)V

    .line 129
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getReceive_state()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setReceiveState(I)V

    .line 130
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getReceive_time()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setReceiveTime(J)V

    .line 131
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getCreate_time()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setCreateTime(J)V

    .line 132
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_id()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementId(I)V

    .line 133
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getSort_index()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setSortIndex(I)V

    .line 134
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_task_id()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementTaskId(I)V

    .line 136
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_url_undone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementIconUndoneUrl(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementIconCompleteUrl(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getBackground_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setBackgroundCompleteUrl(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_level()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementLevel(I)V

    .line 140
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_type()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementType(I)V

    .line 141
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_detail_undone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementUndoneDetail(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_detail_completed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementCompletedDetail(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getCard_color()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setCompleteColor(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_point()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementPoint(I)V

    .line 146
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getProgress_denominator()I

    move-result v5

    .line 147
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getProgress_numerator()I

    move-result v3

    const/4 v6, 0x1

    .line 148
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 149
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move v3, v5

    goto :goto_1

    .line 154
    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 156
    :goto_1
    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setProgressMax(I)V

    .line 157
    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setProgressNow(I)V

    .line 159
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setAchievements(Ljava/util/List;)V

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public queryAchievement(I)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;
    .locals 2

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 52
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementTaskId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryAchievements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryBadgeCount()I
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryAchievements()Ljava/util/List;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 68
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v1

    if-le v1, v3, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public queryTotalPoint()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getTotalPoint()I

    move-result p0

    return p0
.end method

.method public updateAchievementOne(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 190
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 192
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getTotalPoint()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 193
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 194
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object p0

    .line 195
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object p1

    .line 197
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 198
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 202
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementId()I

    move-result v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 203
    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public updateAchievements(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)V
    .locals 2

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 173
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getTotalPoint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    .line 176
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalAchievements()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTotalPoint(I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->achievementBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setTotalPoint(I)V

    return-void
.end method
