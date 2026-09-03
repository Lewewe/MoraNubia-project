.class Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;
.super Ljava/lang/Object;
.source "AchievementFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/AchievementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AchievementNetworkCallback"
.end annotation


# instance fields
.field private receiveTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Lcn/nubia/redmagickyi/achievement/AchievementFragment$1;)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;-><init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)V

    return-void
.end method


# virtual methods
.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;Z)V
    .locals 0

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->updateUI()V

    return-void
.end method

.method public onReceiveError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->receiveTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 399
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$302(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Z)Z

    return-void
.end method

.method public onReceiveSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 3

    .line 386
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 387
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v1, "mora_achievement_get"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->receiveTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "achievement_get_ID"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->receiveTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementPoint()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "achievement_get_value"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalPoint()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "achievement_value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 393
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->receiveTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$400(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    return-void
.end method

.method public setReceiveTask(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->receiveTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    return-void
.end method
