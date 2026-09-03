.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Window-WindowManager"


# instance fields
.field private context:Landroid/content/Context;

.field private iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

.field private isShowing:Z

.field private listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

.field private menuPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

.field private operatorPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->context:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    .line 126
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    .line 127
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    .line 128
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    .line 129
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)V

    .line 130
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->menuPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    .line 131
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->menuPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    return-object p0
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    return-object p0
.end method

.method static synthetic access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->checkWordsVisibillyState()V

    return-void
.end method

.method private checkWordsVisibillyState()V
    .locals 2

    .line 388
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$1800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->stopCaption()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeUnitySkin()V
    .locals 0

    .line 343
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->changeUnitySkin()V

    return-void
.end method

.method public getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;
    .locals 2

    .line 400
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 404
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 410
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isWifiConnected(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    if-eqz p0, :cond_3

    .line 413
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;->getCurrentWifiName()Ljava/lang/String;

    move-result-object p0

    .line 414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 418
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 419
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->isShowing:Z

    .line 156
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    .line 351
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->menuPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->updateAccompanyState()V

    goto :goto_0

    .line 352
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->checkWordsVisibillyState()V

    goto :goto_0

    .line 355
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 358
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 361
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 364
    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 367
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 370
    :cond_6
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 372
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onDigitalHumanSettingsChanged: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Window-WindowManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    return-void
.end method

.method public onNetTypeChanged()V
    .locals 0

    .line 384
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    return-void
.end method

.method public onStateMachineChanged()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    if-eqz v0, :cond_0

    .line 429
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    .line 430
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 435
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->isShowing:Z

    .line 436
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->release()V

    return-void
.end method

.method public setUnityMute()V
    .locals 0

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setUnityMute()V

    return-void
.end method

.method public setUnityUnmute()V
    .locals 0

    .line 330
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setUnityUnmute()V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->isShowing:Z

    .line 140
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCaption(Ljava/lang/String;JZZ)V
    .locals 9

    .line 172
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v8, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$5;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-wide v5, p2

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;ZLjava/lang/String;JZ)V

    invoke-virtual {v0, v8}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startInput(Ljava/lang/String;)V
    .locals 2

    .line 196
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    if-eq v0, v1, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
    .locals 16

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->getPresetButtonData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, v1

    .line 219
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->getOutputButtonData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 220
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->getOutputListData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    move-result-object v1

    :cond_2
    move-object v8, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v10, :cond_3

    .line 222
    array-length v2, v10

    if-lez v2, :cond_3

    move v11, v0

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v5, :cond_4

    .line 223
    array-length v2, v5

    if-lez v2, :cond_4

    move v12, v0

    goto :goto_3

    :cond_4
    move v12, v1

    :goto_3
    if-eqz v8, :cond_5

    .line 224
    array-length v2, v8

    if-lez v2, :cond_5

    move v13, v0

    goto :goto_4

    :cond_5
    move v13, v1

    .line 225
    :goto_4
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v14

    new-instance v15, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;

    move-object v2, v15

    move-object/from16 v3, p0

    move v4, v12

    move-object/from16 v6, p1

    move v7, v13

    move v9, v11

    invoke-direct/range {v2 .. v10}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;Z[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;Z[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    invoke-virtual {v14, v15}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    move v0, v1

    :cond_7
    :goto_5
    return v0
.end method

.method public startUnitySpeaking(IZ)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->startUnitySpeaking(IZ)V

    return-void
.end method

.method public stopCaption()V
    .locals 2

    .line 186
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopInput()V
    .locals 2

    .line 209
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$8;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopMenu()V
    .locals 2

    .line 314
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$11;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$11;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopMenuTextArea()V
    .locals 2

    .line 304
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$10;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$10;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopUnitySpeaking()V
    .locals 0

    .line 338
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->stopUnitySpeaking()V

    return-void
.end method
