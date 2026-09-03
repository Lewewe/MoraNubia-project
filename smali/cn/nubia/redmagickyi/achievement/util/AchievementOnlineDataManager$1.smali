.class Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager$1;
.super Ljava/lang/Object;
.source "AchievementOnlineDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->parseAchievementsResponse(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;)I
    .locals 3

    .line 103
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getSort_index()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getSort_index()I

    move-result v0

    const/4 v1, 0x1

    if-le p0, v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getSort_index()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getSort_index()I

    move-result v0

    const/4 v2, -0x1

    if-ne p0, v0, :cond_2

    .line 106
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_level()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_level()I

    move-result v0

    if-le p0, v0, :cond_1

    return v1

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_level()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getAchievement()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->getAchievement_level()I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 99
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    check-cast p2, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager$1;->compare(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;)I

    move-result p0

    return p0
.end method
