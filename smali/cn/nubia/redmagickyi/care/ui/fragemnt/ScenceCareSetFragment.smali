.class public Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "ScenceCareSetFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;


# static fields
.field private static final OPEN_WALLPAPER_UNITY:I = 0x0

.field private static TAG:Ljava/lang/String; = "ScenceCareSetFragment"

.field private static final VIDEO_THUMBNAILS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_VIEW_VISIBLE:I = 0x1


# instance fields
.field public ACCESS_FINE_LOCATION_PERMISSIONS:I

.field public ACCESS_OVERLAY_PERMISSIONS:I

.field private all:Landroid/widget/RadioButton;

.field private bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private careFrequencyTitle:Landroid/widget/TextView;

.field private frequency:Landroid/widget/RadioGroup;

.field private frequencyOfenTips:Landroid/widget/TextView;

.field private frequencyTips:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private high:Landroid/widget/RadioButton;

.field private life:Landroid/widget/CheckBox;

.field private low:Landroid/widget/RadioButton;

.field private mIvVideoviewPlay:Landroid/widget/ImageView;

.field private mVideo_path:Ljava/lang/String;

.field private mVideoviewMask:Landroid/view/View;

.field private min:Landroid/widget/RadioButton;

.field private mobileDataTitle:Landroid/widget/TextView;

.field private moblie_data:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private netMute:Landroid/widget/TextView;

.field private openBubble:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private openBubbleMute:Landroid/widget/TextView;

.field private openBubbleText:Landroid/widget/TextView;

.field private permissionRequestingCheckBox:Landroid/widget/CheckBox;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private rootView:Landroid/view/View;

.field private scenceTips:Landroid/widget/ImageView;

.field private scenceTitle:Landroid/widget/TextView;

.field private scenceTitleTips:Landroid/widget/TextView;

.field private settingTips:Landroid/widget/ImageView;

.field private settingTitle:Landroid/widget/TextView;

.field private systerm:Landroid/widget/CheckBox;

.field private tooltipWindow:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

.field private user_type:I

.field private videoPlayTitle:Landroid/widget/TextView;

.field private videoView:Lcn/nubia/redmagickyi/util/VideoView;

.field videoViewLayout:Landroid/widget/FrameLayout;

.field private wifi1Title:Landroid/widget/TextView;

.field private wifi2Title:Landroid/widget/TextView;

.field private wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

.field private wifiLayout_1:Landroid/widget/RelativeLayout;

.field private wifiLayout_2:Landroid/widget/RelativeLayout;

.field private wifiLayout_3:Landroid/widget/RelativeLayout;

.field private wifi_1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private wifi_2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private wifi_check_1:Landroid/widget/TextView;

.field private wifi_check_2:Landroid/widget/TextView;

.field private workAndStudy:Landroid/widget/CheckBox;

.field private workStudyBg:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->VIDEO_THUMBNAILS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const/16 v0, 0x2711

    .line 80
    iput v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->ACCESS_FINE_LOCATION_PERMISSIONS:I

    const/16 v0, 0x2712

    .line 81
    iput v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->ACCESS_OVERLAY_PERMISSIONS:I

    .line 94
    const-string v0, "video/bubble.mp4"

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    .line 378
    new-instance v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi1Title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi2Title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mIvVideoviewPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideoviewMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/util/VideoView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_check_1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_check_2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private sendCareSceneTrack()V
    .locals 5

    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 662
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v2, "mora_care"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "on"

    const-string v3, "off"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "mora_care_work"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "mora_care_life"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    const-string v1, "mora_care_device"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private setCorner(Landroid/view/View;F)V
    .locals 1

    .line 466
    new-instance v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$6;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$6;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p0, 0x1

    .line 477
    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private setVideoPath()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getBubbleMute()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const-string v0, "video/bubble.mp4"

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getBubbleMute()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 459
    const-string v0, "video/mute.mp4"

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getBubbleMute()I

    move-result v0

    if-nez v0, :cond_2

    .line 461
    const-string v0, "video/only_motion.mp4"

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public ShowTips(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 550
    new-instance v0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3, p2}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->tooltipWindow:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    const/4 p0, 0x1

    .line 551
    invoke-virtual {v0, p1, p0, p0}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->showToolTip(Landroid/view/View;IZ)V

    return-void
.end method

.method public UpdateViocePlayFrequencyCheckBox()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getPlayFrequency()I

    move-result v0

    .line 491
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->low:Landroid/widget/RadioButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 492
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->min:Landroid/widget/RadioButton;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 493
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->high:Landroid/widget/RadioButton;

    if-ne v0, v4, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 494
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->all:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 140
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 124
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public getVideoThumbDrawble()Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 335
    sget-object v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->VIDEO_THUMBNAILS:Ljava/util/Map;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    :cond_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_120_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 340
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_259p63_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 341
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const-wide/16 v2, 0x1

    .line 343
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    invoke-static {v0, v8, v9}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 351
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 357
    :cond_3
    sget-object v1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->VIDEO_THUMBNAILS:Ljava/util/Map;

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 355
    :cond_4
    :goto_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method public hideTips()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->frequencyOfenTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->scenceTitleTips:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 104
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance p2, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$1;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    const v0, 0xea60

    invoke-direct {p1, v0, p2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    .line 152
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_type_layout_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->setRadius(FFFF)V

    .line 153
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_care_scence:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->scenceTitleTips:Landroid/widget/TextView;

    .line 154
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->scenceTitleTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_care_frequency:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->frequencyOfenTips:Landroid/widget/TextView;

    .line 157
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->frequencyOfenTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->work_study_checkbox_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workStudyBg:Landroid/widget/LinearLayout;

    .line 160
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->open_bubble_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubbleText:Landroid/widget/TextView;

    .line 161
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->open_bubble_mute_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubbleMute:Landroid/widget/TextView;

    .line 163
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->net_mute_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->netMute:Landroid/widget/TextView;

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_1_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi1Title:Landroid/widget/TextView;

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_2_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi2Title:Landroid/widget/TextView;

    .line 169
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi2Title:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 186
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_3_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mobileDataTitle:Landroid/widget/TextView;

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_type_title_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->scenceTips:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_frequency_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->careFrequencyTitle:Landroid/widget/TextView;

    .line 191
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_voice_frequency_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->frequencyTips:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_group_care:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->frequency:Landroid/widget/RadioGroup;

    .line 195
    new-instance v1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$3;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 209
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_low:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->low:Landroid/widget/RadioButton;

    .line 210
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->min:Landroid/widget/RadioButton;

    .line 212
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_hight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->high:Landroid/widget/RadioButton;

    .line 214
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->all:Landroid/widget/RadioButton;

    .line 216
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 217
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->UpdateViocePlayFrequencyCheckBox()V

    .line 218
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_work_or_study:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    .line 219
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string v2, "scence_work_study"

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_life:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    .line 229
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string v2, "scence_life"

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_1

    .line 234
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 236
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->life:Landroid/widget/CheckBox;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_systerm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    .line 239
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string v2, "scence_systerm"

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getScenceCareStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_2

    .line 244
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->systerm:Landroid/widget/CheckBox;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 248
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiLayout_1:Landroid/widget/RelativeLayout;

    .line 249
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiLayout_2:Landroid/widget/RelativeLayout;

    .line 251
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_type_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->scenceTitle:Landroid/widget/TextView;

    .line 253
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->settingTitle:Landroid/widget/TextView;

    .line 255
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->open_bubble_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubble:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 257
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubble:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->bubbule_mute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 260
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubble:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getBubbleMute()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 264
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->setVideoPath()V

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setEnabled(Z)V

    goto :goto_5

    .line 268
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setEnabled(Z)V

    .line 270
    :goto_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e851eb8    # 0.26f

    if-ne v1, v3, :cond_6

    move v1, v4

    goto :goto_6

    :cond_6
    move v1, v5

    :goto_6
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubbleMute:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v1

    if-ne v1, v3, :cond_7

    goto :goto_7

    :cond_7
    move v4, v5

    :goto_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 272
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_check_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_check_1:Landroid/widget/TextView;

    .line 273
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_check_1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->care_network_wifi_selected:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getHOME_WIFI_SSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_check_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_check_2:Landroid/widget/TextView;

    .line 276
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_check_2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->care_network_wifi_selected:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getCOMPANY_WIFI_SSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 279
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string/jumbo v3, "wifi_1_mute"

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 282
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string/jumbo v3, "wifi_2_mute"

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifi_2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mobile_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->moblie_data:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 285
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string v3, "mobile_data_mute"

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMute(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->moblie_data:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 287
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_network_check_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isSupportedSimCard()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->video_view_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoViewLayout:Landroid/widget/FrameLayout;

    .line 291
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->setCorner(Landroid/view/View;F)V

    .line 292
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/VideoView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    .line 293
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->setCorner(Landroid/view/View;F)V

    .line 294
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/VideoView;->setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    .line 296
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideoviewMask:Landroid/view/View;

    .line 297
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getVideoThumbDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideoviewMask:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->setCorner(Landroid/view/View;F)V

    .line 299
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_videoview_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mIvVideoviewPlay:Landroid/widget/ImageView;

    .line 300
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mIvVideoviewPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    new-instance v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$4;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V

    return-void
.end method

.method public initdata()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    .line 364
    sget-object v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user_type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->care_scence_work_or_study:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workStudyBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 369
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->redmagic_care_study:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    if-ne v0, v1, :cond_2

    .line 373
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->redmagic_care_work:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->workAndStudy:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 613
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 614
    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->ACCESS_OVERLAY_PERMISSIONS:I

    if-ne p1, p0, :cond_0

    .line 615
    sget-object p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    const-string p1, "onActivityResult has permission ACCESS_OVERLAY_PERMISSIONS"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    const-string p1, "not permission ACCESS_OVERLAY_PERMISSIONS"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 402
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 403
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_work_or_study:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 405
    iget p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    sget v0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne p1, v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_scence_study_open:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 407
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->user_type:I

    sget v0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    if-ne p1, v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_scence_work_open:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_scence_study_work_open:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 412
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    :cond_2
    const-string p1, "scence_work_study"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->sendCareSceneTrack()V

    goto/16 :goto_4

    .line 416
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_life:I

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    .line 418
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_scence_life_open:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 419
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    :cond_4
    const-string p1, "scence_life"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->sendCareSceneTrack()V

    goto/16 :goto_4

    .line 423
    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_systerm:I

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    .line 425
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_scence_systerm_open:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 426
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    :cond_6
    const-string p1, "scence_systerm"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->sendCareSceneTrack()V

    goto/16 :goto_4

    .line 430
    :cond_7
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->open_bubble_check:I

    const-string v2, "bubble_mute"

    if-ne p1, v0, :cond_b

    .line 431
    const-string p1, "open_bubble"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p2, :cond_8

    .line 433
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 434
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setEnabled(Z)V

    .line 435
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 437
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setEnabled(Z)V

    .line 439
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e851eb8    # 0.26f

    if-eqz p2, :cond_9

    move v2, v0

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setAlpha(F)V

    .line 440
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubbleMute:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 441
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->setVideoPath()V

    goto :goto_4

    .line 442
    :cond_b
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->bubbule_mute:I

    if-ne p1, v0, :cond_c

    .line 443
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    sget-object p1, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->MUTE_VOLUM_STATUS:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->setVideoPath()V

    goto :goto_4

    .line 446
    :cond_c
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->wifi_1:I

    if-ne p1, p0, :cond_d

    .line 447
    const-string/jumbo p0, "wifi_1_mute"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 448
    :cond_d
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->wifi_2:I

    if-ne p1, p0, :cond_e

    .line 449
    const-string/jumbo p0, "wifi_2_mute"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 450
    :cond_e
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->mobile_data:I

    if-ne p1, p0, :cond_f

    .line 451
    const-string p0, "mobile_data_mute"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 505
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_type_title_tips:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 506
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->scenceTitleTips:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 508
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_voice_frequency_tips:I

    if-ne p1, v0, :cond_1

    .line 509
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->frequencyOfenTips:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_1:I

    if-ne p1, v0, :cond_2

    .line 512
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getHOME_WIFI_SSID()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$7;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$7;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->showWifiDalog(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    goto :goto_0

    .line 527
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_2:I

    if-ne p1, v0, :cond_3

    .line 528
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getCOMPANY_WIFI_SSID()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->showWifiDalog(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    goto :goto_0

    .line 543
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_videoview_play:I

    if-ne p1, v0, :cond_4

    .line 544
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 545
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mVideo_path:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 131
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->care_secence_select_layout_new:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->rootView:Landroid/view/View;

    .line 132
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->initView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->initdata()V

    .line 134
    sget-object p1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onGainFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocus()Z
    .locals 1

    .line 671
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    .line 673
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mIvVideoviewPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocusTransient()Z
    .locals 1

    .line 680
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    .line 682
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->mIvVideoviewPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 623
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 624
    sget-object v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onRequestPermissionsResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 629
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 631
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionRequestingCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 632
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 633
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionRequestingCheckBox:Landroid/widget/CheckBox;

    goto :goto_0

    .line 636
    :cond_2
    sget-object p1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->TAG:Ljava/lang/String;

    const-string p2, "not permission ACCESS_OVERLAY_PERMISSIONS"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 643
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 644
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$9;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$9;-><init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->shouldShowWifiDialog()Z

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 654
    const-string v0, "open_bubble"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->openBubble:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 657
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->bubblemute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getBubbleMute()I

    move-result p0

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 556
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getPlayFrequency()I

    move-result v0

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 558
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->open_bubble_check:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    .line 559
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 561
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "package:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget p2, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->ACCESS_OVERLAY_PERMISSIONS:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v5

    .line 566
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_1

    if-ne v0, v3, :cond_1

    return v5

    :cond_1
    return v4

    .line 570
    :cond_2
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_low:I

    if-ne v1, v2, :cond_4

    .line 571
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3

    if-ne v0, v3, :cond_3

    return v5

    :cond_3
    return v4

    .line 575
    :cond_4
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_middle:I

    if-ne v1, v2, :cond_6

    .line 576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x2

    if-ne v0, p0, :cond_5

    return v5

    :cond_5
    return v4

    .line 580
    :cond_6
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_hight:I

    if-ne v1, v2, :cond_8

    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_7

    if-ne v0, v5, :cond_7

    return v5

    :cond_7
    return v4

    .line 585
    :cond_8
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_freuqency_all:I

    if-ne v1, v2, :cond_a

    .line 586
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_9

    if-nez v0, :cond_9

    return v5

    :cond_9
    return v4

    .line 590
    :cond_a
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_work_or_study:I

    if-eq v1, v0, :cond_c

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_life:I

    if-eq v1, v0, :cond_c

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scence_systerm:I

    if-ne v1, v0, :cond_b

    goto :goto_0

    :cond_b
    return v4

    .line 591
    :cond_c
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_f

    .line 592
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_e

    .line 594
    const-class p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_1

    .line 596
    :cond_d
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz p2, :cond_e

    .line 597
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 598
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 599
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionRequestingCheckBox:Landroid/widget/CheckBox;

    return v5

    :cond_e
    :goto_1
    const/4 p1, 0x0

    .line 604
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->permissionRequestingCheckBox:Landroid/widget/CheckBox;

    :cond_f
    return v4
.end method

.method public showWifiDalog(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/care/view/WifiDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    .line 486
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->show(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    return-void
.end method
