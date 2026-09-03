.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$1;
.super Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;
.source "AchievementNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->showReceiveDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 209
    invoke-super {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;->onBackPressed()V

    .line 210
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->cancelReceiveAchievement()V

    return-void
.end method
