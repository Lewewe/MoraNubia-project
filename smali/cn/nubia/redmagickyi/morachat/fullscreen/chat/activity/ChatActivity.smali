.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "ChatActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/scene/SceneGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatActivity"


# instance fields
.field private chatManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

.field private mContext:Landroid/app/Activity;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

.field private uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->chatManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    return-object p0
.end method

.method static synthetic access$4200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Z
    .locals 0

    .line 97
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->isAiAgentEnable()Z

    move-result p0

    return p0
.end method

.method private isAiAgentEnable()Z
    .locals 2

    .line 195
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isOnlyFullScreenChatForAIAgent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 198
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isEnableWakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public static startChatActivity(Landroid/content/Context;)V
    .locals 2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.redmagickyi.chatmain"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 293
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 296
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 2

    .line 242
    const-string v0, "ChatActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 244
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->unregisterReceiver()V

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->release()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->chatManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->release()V

    .line 251
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    if-eqz p0, :cond_2

    .line 252
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->release()V

    :cond_2
    return-void
.end method

.method public getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 108
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_CHAT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method protected isEnableActivityEnterAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isEnableActivityExitAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 272
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    if-eqz p2, :cond_1

    .line 275
    new-instance p2, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const-string p3, ""

    invoke-direct {p2, v0, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    .line 276
    const-string p3, "chat_img:"

    invoke-virtual {p2, p1, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->sendToChat(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 236
    const-string v0, "ChatActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 285
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 286
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    if-eqz p0, :cond_0

    .line 287
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string p1, "ChatActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->mContext:Landroid/app/Activity;

    .line 124
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_fs_chat_activity_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->setContentView(I)V

    .line 125
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->chatManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    .line 126
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    .line 127
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    .line 128
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V

    const v1, 0x11170

    invoke-direct {p1, v1, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 144
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->registerReceiver(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V

    .line 176
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p0

    const-string p1, "click"

    const-string/jumbo v0, "yes"

    const-string v1, "cn.nubia.gamelauncher"

    const-string v2, "mora_agent_chat"

    invoke-virtual {p0, v1, v2, p1, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->switchToSpeechMode(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onPause()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 225
    const-string v0, "ChatActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onPause()V

    .line 229
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    if-eqz p0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->onPause()V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 210
    const-string v0, "ChatActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->isAiAgentEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onResume()V

    .line 217
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->speechManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    if-eqz p0, :cond_2

    .line 218
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->onResume()V

    :cond_2
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    .line 308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 309
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->mContext:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
