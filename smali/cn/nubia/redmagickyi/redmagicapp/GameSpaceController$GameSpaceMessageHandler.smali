.class public Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;
.super Landroid/os/Handler;
.source "GameSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameSpaceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 964
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 967
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "online"

    const-string v2, "GameSpaceActivity"

    const/16 v3, 0x3e8

    const-string v4, "mood_type"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 1093
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1094
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    aget-object v2, v0, v7

    if-nez v2, :cond_0

    move-object v2, v6

    goto :goto_0

    :cond_0
    check-cast v2, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    :goto_0
    aget-object v0, v0, v8

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1068
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->friend_value_day_limit:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto/16 :goto_5

    .line 1065
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->net_work_bad:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto/16 :goto_5

    .line 1060
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1061
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1062
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v2

    aget v2, v2, v8

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v1, v0, v2, v3, v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateFriendValueLayoutState(ZIILjava/lang/Integer;)V

    goto/16 :goto_5

    .line 993
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/PopDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->forceDismissNoticeDialog()V

    goto/16 :goto_5

    .line 1022
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    .line 1023
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->getFriendValue()I

    move-result v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->getLevel()I

    move-result v0

    invoke-static {v1, v7, v2, v0}, Lcn/nubia/redmagickyi/util/Utils;->setFriendness(Landroid/content/Context;III)V

    .line 1024
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v1

    aget v1, v1, v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v2

    aget v2, v2, v5

    invoke-virtual {v0, v8, v1, v2, v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateFriendValueLayoutState(ZIILjava/lang/Integer;)V

    .line 1025
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1026
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1027
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateFriendValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1030
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1033
    :cond_2
    sput-object v6, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    goto/16 :goto_5

    .line 973
    :pswitch_7
    const-string v0, "handleMessage: EMAIL_UPDATE_FINISH"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateMailUnreadUI()V

    goto/16 :goto_5

    .line 990
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/PopDialogManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnAppUpdate(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V

    goto/16 :goto_5

    .line 987
    :pswitch_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/PopDialogManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    :cond_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnResourceUpdate(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;)V

    goto/16 :goto_5

    .line 977
    :pswitch_a
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-nez v0, :cond_6

    .line 979
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v3, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiRestartService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 980
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto/16 :goto_5

    :cond_6
    const/16 v0, 0xbc1

    .line 982
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeMessages(I)V

    const-wide/16 v1, 0x3e8

    .line 983
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 1071
    :pswitch_b
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->hideModelMotionSubtitle()V

    .line 1072
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1073
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1074
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    .line 1075
    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    .line 1076
    invoke-virtual {v1, v8}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 1077
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 1078
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 1080
    :pswitch_c
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->hideModelMotionSubtitle()V

    .line 1081
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1082
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1083
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    .line 1084
    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    .line 1085
    invoke-virtual {v1, v8}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 1086
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 1087
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    goto/16 :goto_5

    .line 1036
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1037
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1038
    const-string v2, "online_total"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1039
    const-string v3, "user_level"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1040
    const-string v4, "value_delta"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v1, :cond_9

    .line 1042
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v4

    aget v4, v4, v8

    if-lez v4, :cond_7

    sub-int v0, v2, v4

    .line 1044
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1048
    :cond_7
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v4

    aget v4, v4, v5

    if-eq v4, v3, :cond_8

    .line 1050
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v4, v7}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->loadList(Landroid/content/Context;Z)V

    .line 1053
    :cond_8
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v4, v7, v2, v3}, Lcn/nubia/redmagickyi/util/Utils;->setFriendness(Landroid/content/Context;III)V

    .line 1056
    :cond_9
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateFriendValueLayoutState(ZIILjava/lang/Integer;)V

    goto/16 :goto_5

    .line 996
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 997
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    if-eqz v1, :cond_a

    .line 999
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->updateAccountInfo(Ljava/lang/String;)V

    .line 1002
    :cond_a
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    if-eqz v1, :cond_b

    .line 1003
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->checkAccountChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1005
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    .line 1006
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    goto :goto_3

    .line 1009
    :cond_b
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    .line 1010
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    .line 1013
    :cond_c
    :goto_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1014
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->isHaveNew()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->isHaveNew()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    .line 1017
    :cond_d
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->hideMainPageUnreadDot()V

    goto :goto_5

    .line 1015
    :cond_e
    :goto_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->showMainPageUnreadDot()V

    goto :goto_5

    .line 969
    :pswitch_f
    const-string v0, "handleMessage: NOTICE_DOWNLOAD_FISHISH"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->notifyNoticeChange()V

    .line 1099
    :cond_f
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
