.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;
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

.field final synthetic val$finalSceneTwoDetailIcon:Ljava/lang/String;

.field final synthetic val$finalSceneTwoDetailPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 185
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;->val$finalSceneTwoDetailIcon:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;->val$finalSceneTwoDetailPoint:Ljava/lang/String;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconMotionText()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;->val$finalSceneTwoDetailIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getPointText()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;->val$finalSceneTwoDetailPoint:Ljava/lang/String;

    return-object p0
.end method
