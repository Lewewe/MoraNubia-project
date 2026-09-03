.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinNetworkCallback"
.end annotation


# instance fields
.field private exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1274
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;)V
    .locals 0

    .line 1274
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    return-void
.end method

.method private updateExchangeUIError()V
    .locals 4

    .line 1341
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1343
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1344
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1345
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1346
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->dismiss()V

    .line 1348
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    new-instance v1, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1902(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    .line 1349
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->show()V

    goto :goto_0

    .line 1352
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1353
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1354
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->dismiss()V

    .line 1356
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getActivityLink()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onExchangeFail(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateExchangeUIExpired()V
    .locals 2

    .line 1362
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1363
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1364
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->dismiss()V

    .line 1367
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onExchangeExpired()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onExchangeError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1330
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->updateExchangeUIExpired()V

    goto :goto_0

    .line 1321
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->updateExchangeUIError()V

    :goto_0
    const/4 p1, 0x0

    .line 1337
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    return-void

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
    .locals 3

    .line 1294
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1700(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;I)V

    .line 1295
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1296
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onExchangeSuccess()V

    .line 1298
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1300
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1301
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v1, "mora_achievement_cast"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

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

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getAchievementPoint()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "achievement_get_value"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalPoint()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "achievement_value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;Z)V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    return-void
.end method

.method public setExchangeSkin(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V
    .locals 0

    .line 1278
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->exchangeSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    return-void
.end method
