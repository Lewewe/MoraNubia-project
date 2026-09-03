.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2365
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2369
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->updateList(Ljava/util/List;)V

    .line 2370
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onPause()V

    const/4 p1, 0x1

    .line 2371
    sput-boolean p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 2372
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 2373
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 2391
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    const-string p2, "click"

    const-string/jumbo v0, "yes"

    const-string v1, "cn.nubia.gamelauncher"

    const-string v2, "mora_live_calendar"

    invoke-virtual {p1, v1, v2, p2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2393
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->compareList(Ljava/util/List;)Z

    .line 2395
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateLiveCalenderUnreadUI()V

    return-void
.end method
