.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;


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

    .line 2201
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExchangeError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
    .locals 0

    .line 2340
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryReceivedSkinIdNames()[[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->checkOnlineSkinImageData([[Ljava/lang/String;)V

    return-void
.end method

.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;Z)V
    .locals 2

    .line 2204
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryReceivedSkinIdNames()[[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->checkOnlineSkinImageData([[Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 2206
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onPause()V

    const/4 p1, 0x1

    .line 2207
    sput-boolean p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 2208
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 2209
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->isMediaPlaying(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2210
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    .line 2213
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2214
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->hideChangeSkinUnreadDot()V

    .line 2217
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2218
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "model_name"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p2

    const-class v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;)V

    invoke-virtual {p2, v0, p1, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    :cond_2
    return-void
.end method
