.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;
    }
.end annotation


# instance fields
.field private backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

.field private foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

.field private isPortrait:Ljava/lang/Boolean;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;
    .locals 0

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;
    .locals 0

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;Z)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->initBg(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;Landroid/content/res/Configuration;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private initBg(Z)V
    .locals 5

    .line 338
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->getBackground(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;)V

    .line 345
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_SWITCH_SKIN_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    .line 346
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->isModelShowing()Z

    move-result v1

    if-nez p1, :cond_0

    if-eq v1, v0, :cond_8

    .line 349
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 350
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->isPortrait:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 358
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e99999a    # 0.3f

    goto :goto_1

    .line 360
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_90_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 352
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e9fbe77    # 0.312f

    goto :goto_1

    .line 354
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 365
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e638e39

    :goto_1
    mul-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_2

    .line 367
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 370
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getHeaderView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 372
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getHeaderView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 373
    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getHeaderView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 374
    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getHeaderView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 370
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 376
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 378
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 379
    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 380
    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 376
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    if-eqz v0, :cond_7

    .line 382
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->showModel()V

    goto :goto_3

    .line 384
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->hideModel()V

    .line 386
    :goto_3
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->stopPlayMotion()V

    .line 387
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 388
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->stopTTS()V

    :cond_8
    return-void
.end method

.method private updateUIByOrientation(Landroid/content/res/Configuration;)V
    .locals 2

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 442
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 443
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->isPortrait:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_3

    .line 445
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->isPortrait:Ljava/lang/Boolean;

    .line 446
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;Z)V

    .line 447
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->isPortrait:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1800(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;Z)V

    .line 448
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->initBg(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;
    .locals 2

    .line 326
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$1;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$900(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    .line 327
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    .line 328
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-object p0
.end method

.method public isItemVisible(I)Z
    .locals 0

    .line 422
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->isItemVisible(I)Z

    move-result p0

    return p0
.end method

.method public onChatCompleted(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onChatCompleted(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    return-void
.end method

.method public onDataInserted(I)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onDataInserted(I)V

    return-void
.end method

.method public onDataRangeChanged()V
    .locals 0

    .line 410
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onDataRangeChanged()V

    return-void
.end method

.method public onDataRemoved(I)V
    .locals 0

    .line 402
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onDataRemoved(I)V

    return-void
.end method

.method public onDataUpdated(I)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onDataUpdated(I)V

    return-void
.end method

.method public onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0

    .line 414
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->pause()V

    .line 435
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/InputMethodUtils;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->resume()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 333
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->backgroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->release()V

    .line 334
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->destroy()V

    return-void
.end method

.method public sendToChat(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0

    .line 394
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->foregroundPanel:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z

    return-void
.end method
