.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;


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

    .line 2132
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;Z)V
    .locals 2

    .line 2135
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateAchievementUnreadUI()V

    if-eqz p2, :cond_1

    .line 2137
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    if-eqz p1, :cond_0

    .line 2139
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->go2Achievement()V

    goto :goto_0

    .line 2141
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onPause()V

    const/4 p1, 0x1

    .line 2142
    sput-boolean p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 2143
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 2144
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2145
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model_name"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    const-string v0, "from_main"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2147
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    const-class v0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;)V

    invoke-virtual {p1, v0, p2, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 2173
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "mora_honour_click"

    const-string/jumbo v0, "yes"

    const-string v1, "mora_honour"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceiveError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onReceiveSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 0

    return-void
.end method
