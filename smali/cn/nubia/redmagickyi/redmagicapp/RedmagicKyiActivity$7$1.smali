.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7$1;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 736
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayBegin()V
    .locals 0

    return-void
.end method

.method public onPlayEnd()V
    .locals 3

    .line 744
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 745
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->getData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 746
    sget-object v1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->KICK_OUT_BY_MORA:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->finish()V

    return-void
.end method
