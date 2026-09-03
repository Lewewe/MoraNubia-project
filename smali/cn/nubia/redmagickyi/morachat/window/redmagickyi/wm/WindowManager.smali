.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Window-WindowManager"


# instance fields
.field private context:Landroid/content/Context;

.field private iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

.field private isShowing:Z

.field private listener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

.field private operatorPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    .line 59
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    .line 60
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->checkWordsVisibillyState()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->checkWordsVisibillyState()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method private checkWordsVisibillyState()V
    .locals 2

    .line 175
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->access$500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->stopWords()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeUnitySkin()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->changeUnitySkin()V

    return-void
.end method

.method public getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;
    .locals 2

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 191
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 197
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isWifiConnected(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->listener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    if-eqz p0, :cond_3

    .line 200
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;->getCurrentWifiName()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
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

    .line 203
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    .line 205
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

    .line 206
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->isShowing:Z

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->operatorPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateAccompanyState()V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->checkWordsVisibillyState()V

    goto :goto_0

    .line 142
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 145
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 148
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 151
    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 154
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    goto :goto_0

    .line 157
    :cond_6
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onDigitalHumanSettingsChanged: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Window-WindowManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    return-void
.end method

.method public onNetTypeChanged()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    return-void
.end method

.method public onStateMachineChanged()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->isShowing:Z

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->release()V

    return-void
.end method

.method public setUnityMute()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setUnityMute()V

    return-void
.end method

.method public setUnityUnmute()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setUnityUnmute()V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->isShowing:Z

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startUnitySpeaking(IZ)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->startUnitySpeaking(IZ)V

    return-void
.end method

.method public startWords(Ljava/lang/String;IZ)V
    .locals 2

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopUnitySpeaking()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->iconPanel:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->stopUnitySpeaking()V

    return-void
.end method

.method public stopWords()V
    .locals 2

    .line 104
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
