.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private captionPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

.field private context:Landroid/content/Context;

.field private iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

.field private inputPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

.field private isShowing:Z

.field private listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

.field private menuPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window-WindowManager-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->context:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

    .line 119
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    .line 120
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    .line 121
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->captionPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    .line 122
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    .line 123
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->inputPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    .line 124
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    .line 125
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->menuPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    .line 126
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->checkWordsVisibillyState()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->inputPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->menuPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    return-object p0
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

    return-object p0
.end method

.method static synthetic access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->captionPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    return-object p0
.end method

.method private checkWordsVisibillyState()V
    .locals 2

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->captionPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->stopCaption()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;
    .locals 2

    .line 301
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 311
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isWifiConnected(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

    if-eqz p0, :cond_3

    .line 314
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;->getCurrentWifiName()Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
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

    .line 317
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 319
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

    .line 320
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->isShowing:Z

    .line 145
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isInputShowing()Z
    .locals 0

    .line 228
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->inputPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$2000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Z

    move-result p0

    return p0
.end method

.method public isMenuShowing()Z
    .locals 0

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->menuPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 3

    .line 248
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAiAgentSettingsChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    .line 252
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateAccompanyState()V

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->checkWordsVisibillyState()V

    goto :goto_0

    .line 256
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 259
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 262
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 265
    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 268
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 271
    :cond_6
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 273
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 278
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDigitalHumanSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    return-void
.end method

.method public onNetTypeChanged()V
    .locals 0

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    return-void
.end method

.method public onStateMachineChanged()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    if-eqz v0, :cond_0

    .line 330
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    .line 331
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->isShowing:Z

    .line 337
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->release()V

    return-void
.end method

.method public setUnityMute()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->setUnityMute()V

    return-void
.end method

.method public setUnityUnmute()V
    .locals 0

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->setUnityUnmute()V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->isShowing:Z

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCaption(Ljava/lang/String;JZ)V
    .locals 8

    .line 155
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v7, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Ljava/lang/String;JZ)V

    invoke-virtual {v0, v7}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startInput(Ljava/lang/String;)V
    .locals 2

    .line 176
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    if-eq v0, v1, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMenu(Ljava/lang/String;J)V
    .locals 2

    .line 198
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startUnitySpeaking(IZ)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->startUnitySpeaking(IZ)V

    return-void
.end method

.method public stopCaption()V
    .locals 2

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopInput()V
    .locals 2

    .line 189
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopMenu()V
    .locals 2

    .line 211
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$8;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopUnitySpeaking()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->stopUnitySpeaking()V

    return-void
.end method
