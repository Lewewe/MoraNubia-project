.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$5;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneDetailTrack;
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

.field final synthetic val$finalSceneOneDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$5;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$5;->val$finalSceneOneDesc:Ljava/lang/String;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneDetailTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$5;->val$finalSceneOneDesc:Ljava/lang/String;

    return-object p0
.end method
