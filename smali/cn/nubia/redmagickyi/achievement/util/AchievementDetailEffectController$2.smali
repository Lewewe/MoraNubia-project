.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;
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

.field final synthetic val$task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
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

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;->val$task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bitmapsToRead()[Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;->bitmapsToRead()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bitmapsToRead()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 164
    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;->val$task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconUndonePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method
