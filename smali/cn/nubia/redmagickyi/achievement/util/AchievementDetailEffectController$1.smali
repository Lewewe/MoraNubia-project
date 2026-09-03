.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;
.source "AchievementDetailEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->addSpecificTracks(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

.field final synthetic val$finalSceneTwoDetailPoint:Ljava/lang/String;

.field final synthetic val$task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;->val$task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    iput-object p3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;->val$finalSceneTwoDetailPoint:Ljava/lang/String;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bitmapsToRead()[Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;->bitmapsToRead()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bitmapsToRead()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 153
    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;->val$task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconCompletePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public isAtMiddle()Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;->val$finalSceneTwoDetailPoint:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
