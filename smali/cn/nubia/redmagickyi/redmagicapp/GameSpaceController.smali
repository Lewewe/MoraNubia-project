.class public Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
.super Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;
.source "GameSpaceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;
.implements Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;,
        Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;,
        Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;
    }
.end annotation


# static fields
.field public static final APP_VERSION_UPGRADE:I = 0xbc3

.field public static final BUNDLE_RESOURCE_UPGRADE:I = 0xbc2

.field public static final CANCEL_NOTICE_DIALOG:I = 0xbc6

.field public static final EMAIL_UPDATE_FINISH:I = 0xbc4

.field public static final FRIEND_VALUE_DAY_LIMIT:I = 0xbc9

.field private static final INSPIRED_WALLPAPER_START_ACTION:Ljava/lang/String; = "intent.action.inspiredwallpaper.main"

.field public static final LOCATION_PERMISSION_TOAST:I = 0xbc0

.field private static final MSG_MODEL_LOAD_FINISHED:I = 0x138a

.field private static final MSG_MODEL_MOTION_SUBTITLE_DISMISS:I = 0x138f

.field private static final MSG_MODEL_TIPS_ACHIEVEMENT_DISMISS:I = 0x138c

.field private static final MSG_MODEL_TIPS_CHANGESKIN_DISMISS:I = 0x138d

.field private static final MSG_MODEL_TIPS_MAIL_DISMISS:I = 0x138b

.field private static final MSG_MODEL_TIPS_SCREENSHOT_DISMISS:I = 0x138e

.field public static final MSG_SCENE_LOAD_FINISHED:I = 0x1389

.field public static final NETWORK_BAD:I = 0xbc8

.field public static final NOTICE_DOWNLOAD_FISHISH:I = 0xbb8

.field public static final PLAY_MOOD_AUDIO:I = 0xbbe

.field public static final PLAY_MOOD_MOTION:I = 0xbbf

.field public static final RESTART_PROMPT:I = 0xbc1

.field public static final SHOW_FRIEND_VALUE:I = 0xbc7

.field private static final TAG:Ljava/lang/String; = "GameSpaceActivity"

.field public static final UPDATE_ACCOUNT_INFO:I = 0xbca

.field public static final UPDATE_FRIEND_VALUE:I = 0xbbd

.field public static final UPDATE_FRIEND_VALUE_BY_QUERY:I = 0xbc5


# instance fields
.field private final MSG_SCROLL_BANNER_PAGE:I

.field private final UPDATE_NUBIA_ACCNT:I

.field private achievement:Landroid/widget/TextView;

.field private achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

.field private achievementUnreadDot:Landroid/widget/ImageView;

.field private appUpdateDialogDismissListener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

.field private appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

.field private backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

.field private bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

.field private bannerDivider:Landroid/view/View;

.field private bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

.field private cbChangebg:Landroid/widget/CheckBox;

.field private childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private email:Landroid/view/View;

.field private emailUnreadDot:Landroid/widget/ImageView;

.field private exit:Landroid/widget/ImageView;

.field private gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

.field private inspiredWallpaper:Landroid/view/View;

.field private ivChangeFocus:Landroid/widget/ImageView;

.field private ivChangebg:Landroid/view/View;

.field private ivRorate:Landroid/widget/ImageView;

.field private ivShortcut:Landroid/widget/ImageView;

.field private layoutHeart:Landroid/widget/FrameLayout;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private layoutOperatorZones:Landroid/view/View;

.field private layoutTitle:Landroid/view/View;

.field private liveCalenderNetworkCallback:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;

.field private liveCalenderUnreadDot:Landroid/widget/ImageView;

.field private livecalender:Landroid/view/View;

.field private mActionCarePreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mActionPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationDataManager:Lcn/nubia/redmagickyi/database/ApplicationDataManager;

.field private mBackgroundList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/BackgroundBeans;",
            ">;"
        }
    .end annotation
.end field

.field private mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

.field private mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

.field private mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

.field private mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

.field private mNoticeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

.field private mNubiaAcctClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field private mRootView:Landroid/view/ViewGroup;

.field private modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

.field private modelname:Landroid/widget/TextView;

.field private moraChat:Landroid/view/View;

.field private moraStore:Landroid/view/View;

.field private pbHeart:Landroid/widget/ProgressBar;

.field private pbHeartLevel:Landroid/widget/ProgressBar;

.field private popDialogManager:Lcn/nubia/redmagickyi/util/PopDialogManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private resourceUpdateDialogDismissListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;

.field private resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

.field private rvNoticeBannerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private setting:Landroid/widget/ImageView;

.field private skinNetworkCallback:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

.field private tipsAchievement:Landroid/widget/TextView;

.field private tipsMail:Landroid/widget/TextView;

.field private tipsScreenshot:Landroid/widget/TextView;

.field private titleDetail:Landroid/widget/RelativeLayout;

.field private tvFriendValueThis:Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

.field private tvHeart:Landroid/widget/TextView;

.field private tvHeartLevel:Landroid/widget/TextView;

.field private tvModelMotionSubtitle:Landroid/widget/TextView;

.field private volum:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;-><init>()V

    const/16 p3, 0xbbb

    .line 164
    iput p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->UPDATE_NUBIA_ACCNT:I

    const/16 p3, 0xfa0

    .line 180
    iput p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->MSG_SCROLL_BANNER_PAGE:I

    .line 198
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mActionCarePreviewList:Ljava/util/List;

    .line 199
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mActionPreviewList:Ljava/util/List;

    .line 200
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    .line 2051
    new-instance p3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateDialogDismissListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;

    .line 2086
    new-instance p3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateDialogDismissListener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    .line 2132
    new-instance p3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    .line 2201
    new-instance p3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    .line 2365
    new-instance p3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->liveCalenderNetworkCallback:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    .line 226
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "unity"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sput-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    .line 230
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->initCacheDir()V

    .line 231
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initView(Landroid/view/View;)V

    .line 232
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initListener()V

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initData()V

    return-void
.end method

.method private AccountInfoDetail(Landroid/app/Activity;)V
    .locals 2

    .line 259
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v1, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0xbb8

    .line 260
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievement:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateDialogDismissListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/PopDialogManager;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->popDialogManager:Lcn/nubia/redmagickyi/util/PopDialogManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateDialogDismissListener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelname:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->playMotion(I)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->stopPlayMotion()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setPlayIdle(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsMail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->doubleCheckEmail()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsAchievement:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/View;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutOperatorZones:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/CheckBox;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->cbChangebg:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setAudioMute(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Ljava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeFocus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsScreenshot:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvModelMotionSubtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvFriendValueThis:Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutHeart:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvHeart:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvHeartLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->pbHeart:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->pbHeartLevel:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->showModelMotionSubtitle(I)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    return-object p0
.end method

.method static synthetic access$3702(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    return-object p1
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/ViewGroup;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    return-object p0
.end method

.method static synthetic access$3902(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->rvNoticeBannerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$4000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->hideBackIcon()V

    return-void
.end method

.method static synthetic access$4100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->titleDetail:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/BannerLayout;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNubiaAcctClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/app/Activity;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->loginOrRegister(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-object p0
.end method

.method private declared-synchronized changeBackGround(Z)V
    .locals 7

    monitor-enter p0

    .line 1815
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1816
    const-string v0, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1819
    :goto_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v5}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez p1, :cond_3

    .line 1821
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 1822
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initBackGoundAdapter()V

    .line 1824
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->isNeedToRestoreGamespaceBackgroundSelected()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 1826
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v4

    invoke-static {p1, v4}, Lcn/nubia/redmagickyi/util/Utils;->setGameSpaceBgId(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1828
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1831
    :cond_5
    :goto_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getGameSpaceBgId(Landroid/content/Context;)I

    move-result p1

    move v4, v3

    .line 1833
    :goto_4
    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 1834
    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    .line 1835
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v6

    if-ne v6, p1, :cond_6

    .line 1837
    invoke-virtual {v5, v2}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setSelected(Z)V

    move-object v1, v5

    goto :goto_5

    .line 1839
    :cond_6
    invoke-virtual {v5, v3}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setSelected(Z)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    .line 1843
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    .line 1844
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setSelected(Z)V

    .line 1846
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    if-ne p1, v2, :cond_a

    if-eqz v2, :cond_a

    .line 1847
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->notifyDataSetChanged()V

    .line 1848
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getCurrentSelected()I

    move-result v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1850
    :cond_a
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;-><init>()V

    const/16 v0, 0x3e9

    .line 1851
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setMsgID(I)V

    .line 1852
    const-string v0, "gamespace"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setSceneName(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setBgID(I)V

    .line 1854
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 1856
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mora_wallpaper_used"

    const-string/jumbo v3, "wallpaper_name"

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v3, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private changeFocus(Ljava/lang/String;)V
    .locals 5

    .line 1633
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/Utils;->setFocalLen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 1634
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 1635
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangeFocus:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1636
    new-array v0, v1, [I

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_1xview:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_2xview:I

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v4, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_05xview:I

    aput v4, v0, v3

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_1xview:I

    aput v3, v0, v2

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_2xview:I

    aput v2, v0, v1

    .line 1637
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangeFocus:Landroid/widget/ImageView;

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private doubleCheckEmail()V
    .locals 3

    .line 1152
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsMail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsMailUI()V

    return-void

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onPause()V

    const/4 v0, 0x1

    .line 1159
    sput-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 1160
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setPlayIdle(Z)V

    .line 1161
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    const-class v1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method private hideBackIcon()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->exit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->exit:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 516
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_42_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_42_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    const/4 p0, 0x0

    const/4 v2, 0x1

    aput p0, v0, v2

    const-string p0, "translationX"

    invoke-static {v1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 517
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 518
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 4

    .line 266
    new-instance v0, Lcn/nubia/redmagickyi/database/NoticeManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/database/NoticeManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    .line 267
    new-instance v0, Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/database/EmailManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    .line 269
    new-instance v0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 270
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->CheckRednagicCareData()V

    .line 271
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->CheckCareSettingData()V

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->CheckARIamgeData()V

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->CheckARSettingData()V

    .line 277
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->checkLocaleSkinImageData()V

    .line 278
    new-instance v0, Lcn/nubia/redmagickyi/database/BundleResourceManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/database/BundleResourceManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

    .line 279
    new-instance v0, Lcn/nubia/redmagickyi/database/ApplicationDataManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/database/ApplicationDataManager;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mApplicationDataManager:Lcn/nubia/redmagickyi/database/ApplicationDataManager;

    .line 280
    new-instance v0, Lcn/nubia/redmagickyi/util/PopDialogManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/util/PopDialogManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/database/NoticeManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->popDialogManager:Lcn/nubia/redmagickyi/util/PopDialogManager;

    .line 281
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnNoticeInit()V

    .line 282
    new-instance v0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getFragmentManager(Z)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    sput-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    .line 285
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initActionAdapter()V

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    sput-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    .line 287
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    sput-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    .line 288
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initNoticeBanner()V

    .line 289
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->registAchievementNetworkCallback()V

    .line 290
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->registChangeSkinNetworkCallback()V

    .line 291
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->registLiveCalenderNetworkCallback()V

    .line 292
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateWebResource()V

    .line 294
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->prepareWebViewProcess(Landroid/app/Activity;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;->registShortcutMessageBroadcast(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast$OnReceiveListener;)V

    return-void
.end method

.method private initFriendValueLayoutState()V
    .locals 2

    .line 1873
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initFriendValueView(Landroid/view/View;)V
    .locals 1

    .line 1863
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->friend_value_current_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutHeart:Landroid/widget/FrameLayout;

    .line 1864
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_friend_value_this:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvFriendValueThis:Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    .line 1865
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pb_heart:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->pbHeart:Landroid/widget/ProgressBar;

    .line 1866
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_heart:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvHeart:Landroid/widget/TextView;

    .line 1867
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_heart_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvHeartLevel:Landroid/widget/TextView;

    .line 1868
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pb_heart_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->pbHeartLevel:Landroid/widget/ProgressBar;

    .line 1869
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutHeart:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 674
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    .line 675
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    return-void
.end method

.method private initNoticeBanner()V
    .locals 7

    .line 575
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/NoticeManager;->queryAllNotice()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 581
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 582
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 584
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getBegin()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_2

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getEnd()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 585
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    if-nez v0, :cond_4

    .line 590
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    .line 592
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 594
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 595
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v0

    new-instance v3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 621
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$8;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-direct {v0, p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$8;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->rvNoticeBannerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 645
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 646
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->rvNoticeBannerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 647
    new-instance v0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    .line 648
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->setBannerItemOnclick(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;)V

    .line 649
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 651
    :cond_5
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->setData(Ljava/util/List;)V

    .line 652
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->notifyDataSetChanged()V

    .line 654
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/BannerLayout;->setItemCount(I)V

    .line 655
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->scrollToPosition(I)V

    .line 656
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result v0

    if-gtz v0, :cond_6

    .line 657
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 658
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 660
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 662
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 663
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 664
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 666
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 668
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 669
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    const/16 v0, 0xfa0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    return-void
.end method

.method private initOperatorView(Landroid/view/View;)V
    .locals 2

    .line 1654
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutOperatorZones:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1655
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutOperatorZones:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1656
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->rv_changebg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1657
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1658
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1659
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1660
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1682
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_changebg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangebg:Landroid/view/View;

    .line 1683
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1684
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_changebg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->cbChangebg:Landroid/widget/CheckBox;

    .line 1685
    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1720
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivRorate:Landroid/widget/ImageView;

    .line 1721
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1722
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_changefocus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangeFocus:Landroid/widget/ImageView;

    .line 1723
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1724
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivShortcut:Landroid/widget/ImageView;

    .line 1725
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 705
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title_detail_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->titleDetail:Landroid/widget/RelativeLayout;

    .line 706
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    .line 707
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelname:Landroid/widget/TextView;

    .line 708
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelname:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 710
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievement:Landroid/widget/TextView;

    .line 711
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 712
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->achievement_unread_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievementUnreadDot:Landroid/widget/ImageView;

    .line 714
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_mail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsMail:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsMail:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_achievement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsAchievement:Landroid/widget/TextView;

    .line 719
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsAchievement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsScreenshot:Landroid/widget/TextView;

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsScreenshot:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setting:Landroid/widget/ImageView;

    .line 726
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->email:Landroid/view/View;

    .line 728
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mail_unread_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->emailUnreadDot:Landroid/widget/ImageView;

    .line 730
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->inspired:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->inspiredWallpaper:Landroid/view/View;

    .line 732
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "intent.action.inspiredwallpaper.main"

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/CommonUtils;->isActionSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->inspiredWallpaper:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morastore:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraStore:Landroid/view/View;

    .line 735
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraChat:Landroid/view/View;

    .line 737
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->livecalender:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->livecalender:Landroid/view/View;

    .line 739
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->livecalender_unread_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->liveCalenderUnreadDot:Landroid/widget/ImageView;

    .line 741
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->exit:Landroid/widget/ImageView;

    .line 742
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_banner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/BannerLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    .line 745
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->banner_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    .line 747
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_operator_zones:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutOperatorZones:Landroid/view/View;

    .line 748
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    .line 749
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_model_motion_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvModelMotionSubtitle:Landroid/widget/TextView;

    .line 751
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    .line 753
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->initView(Landroid/view/View;)V

    .line 754
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initOperatorView(Landroid/view/View;)V

    .line 755
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initFriendValueView(Landroid/view/View;)V

    .line 756
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateUIByOrientation()V

    .line 759
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v2, "769"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v2, "779"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v2, "789"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v2, "799"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v2, "809"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/view/View;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private loginOrRegister(Landroid/app/Activity;)V
    .locals 2

    .line 237
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 238
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xbb8

    .line 239
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 242
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 243
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private loginOrRegisterByNotNubia(Landroid/app/Activity;)V
    .locals 2

    .line 250
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v1, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0xbb8

    .line 251
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1456
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eq v0, p2, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 1458
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1459
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    if-eqz p3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    .line 1461
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    :cond_3
    return-void
.end method

.method private onModelOperatorSelected(Landroid/view/View;)V
    .locals 4

    .line 1729
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangebg:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1730
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->cbChangebg:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 1731
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivRorate:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1732
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Utils;->setOrientationPortrait(Landroid/content/Context;Z)V

    .line 1733
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_0

    :cond_1
    const/4 p0, 0x6

    :goto_0
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->setRequestedOrientationFromAndroid(I)V

    goto/16 :goto_5

    .line 1734
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangeFocus:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 1735
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getFocalLen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1736
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1738
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    move v2, v1

    .line 1739
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 1740
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 1744
    array-length p1, v0

    if-lt v2, p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    .line 1747
    :goto_4
    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeFocus(Ljava/lang/String;)V

    goto :goto_5

    .line 1748
    :cond_7
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivShortcut:Landroid/widget/ImageView;

    if-ne p1, p0, :cond_8

    .line 1749
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;-><init>()V

    const/16 p1, 0x3ef

    .line 1750
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;->setMsgID(I)V

    .line 1751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/nubia/redmagickyi/util/FileUtils;->getPhoneStorage()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;->setPath(Ljava/lang/String;)V

    .line 1752
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private playMotion(I)V
    .locals 1

    .line 1399
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v0, 0x3e8

    .line 1400
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v0, 0x1

    .line 1401
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 1402
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 1403
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private registAchievementNetworkCallback()V
    .locals 1

    .line 2125
    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;)V

    return-void
.end method

.method private registChangeSkinNetworkCallback()V
    .locals 1

    .line 2194
    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;)V

    return-void
.end method

.method private registLiveCalenderNetworkCallback()V
    .locals 1

    .line 2358
    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->liveCalenderNetworkCallback:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;)V

    return-void
.end method

.method private setAudioMute(Z)V
    .locals 1

    .line 1641
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/Utils;->setMuteMode(Landroid/content/Context;Z)V

    .line 1642
    invoke-static {p1, p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    if-eqz p1, :cond_0

    .line 1644
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_volume_off:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1646
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_volume_on:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setPlayIdle(Z)V
    .locals 1

    .line 1627
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIdleState;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageIdleState;-><init>()V

    const/16 v0, 0x3fa

    .line 1628
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageIdleState;->setMsgID(I)V

    .line 1629
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageIdleState;->setIdleState(Z)V

    .line 1630
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private showModelMotionSubtitle(I)V
    .locals 0

    return-void
.end method

.method private stopPlayMotion()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeMessages(I)V

    .line 1387
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    const/16 v1, 0xbbf

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeMessages(I)V

    .line 1389
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v1, 0x3e8

    .line 1390
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v1, 0x1

    .line 1391
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    const/4 v1, -0x1

    .line 1392
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 1393
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 1395
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->hideModelMotionSubtitle()V

    return-void
.end method

.method private unregistAchievementNetworkCallback()V
    .locals 0

    .line 2129
    const-class p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method

.method private unregistChangeSkinNetworkCallback()V
    .locals 0

    .line 2198
    const-class p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method

.method private unregistLiveCalenderNetworkCallback()V
    .locals 0

    .line 2362
    const-class p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method

.method private updateUIByOrientation()V
    .locals 7

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_addon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1472
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->email:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 1473
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->inspiredWallpaper:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 1474
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraStore:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 1475
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->livecalender:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/ModuleCustomer$LiveCalender;->enable(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 1476
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraChat:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->enable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->makeChildViewVisibleState(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 1477
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->titleDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->titleDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1480
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v1, :cond_2

    .line 1481
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1482
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1483
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->titleDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1490
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1491
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1492
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setting:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1496
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_27_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1497
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setting:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1499
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1500
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_59_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1501
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1502
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1504
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_addon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1505
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1506
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_92_dp:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1507
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1508
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1510
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_banner_update:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1511
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1512
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1513
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1514
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1516
    :cond_3
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1517
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1518
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1520
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_mail_inspired:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1521
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1522
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateLiveCalenderUnreadUI()V

    .line 1525
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_operator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1526
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1527
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_112_dp:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1528
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    if-eqz v0, :cond_5

    .line 1531
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getCurrentSelected()I

    move-result v0

    .line 1532
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    if-eqz v1, :cond_5

    if-gez v0, :cond_4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1533
    :cond_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_5

    .line 1535
    invoke-virtual {v1, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1541
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz p0, :cond_a

    .line 1542
    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->updateUIByOrientation(Z)V

    goto/16 :goto_1

    .line 1546
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1547
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_9_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1548
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setting:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1552
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1553
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setting:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1556
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1557
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_48_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1558
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->volum:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_addon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1561
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1562
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1563
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_74_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1564
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1566
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_banner_update:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1567
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1568
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 1569
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1570
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1572
    :cond_7
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1573
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_76_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1574
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_mail_inspired:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1577
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1578
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateLiveCalenderUnreadUI()V

    .line 1581
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_operator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1582
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1583
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1584
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1586
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    if-eqz v0, :cond_9

    .line 1587
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getCurrentSelected()I

    move-result v0

    .line 1588
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    if-eqz v1, :cond_9

    if-gez v0, :cond_8

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1589
    :cond_8
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_9

    .line 1591
    invoke-virtual {v1, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1597
    :cond_9
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz p0, :cond_a

    .line 1598
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->updateUIByOrientation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1602
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cause "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " when update ui by orientation"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameSpaceActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void
.end method


# virtual methods
.method public ARCamera()V
    .locals 3

    .line 1271
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v2, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1272
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1273
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_enter:I

    sget v2, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_exit:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->overridePendingTransition(II)V

    .line 1276
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mora_ARCamera"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, p0, v1, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Achievement()V
    .locals 2

    .line 1342
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1345
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$17;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$17;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_0

    .line 1359
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsAchievement:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateAchievementUnreadUI()V

    .line 1362
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsAchievementUI()V

    return-void

    .line 1365
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->loadList(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method public AiAgentEntranceCard(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1372
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutOperatorZones:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 1373
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->expandAiAgentEntranceCard()V

    goto :goto_0

    .line 1375
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    :goto_0
    return-void
.end method

.method public AiAgentSettings()V
    .locals 3

    .line 1381
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v2, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1382
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Care()V
    .locals 3

    .line 1280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v2, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1281
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public ChangeSkin()V
    .locals 3

    .line 1218
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1221
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1222
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->app_version_update_layout_toast:I

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 1224
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->performClick()V

    return-void

    .line 1227
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_toast:I

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 1229
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->performClick()V

    return-void

    .line 1232
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$15;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$15;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_1

    .line 1248
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1249
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz v0, :cond_4

    .line 1250
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->showChangeSkinTips()V

    goto :goto_0

    .line 1252
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->changeskin_tips_login:I

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return-void

    .line 1256
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadList(Landroid/content/Context;Z)V

    goto :goto_1

    .line 1259
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadList(Landroid/content/Context;Z)V

    :goto_1
    return-void
.end method

.method public Email()V
    .locals 2

    .line 1134
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_0

    .line 1147
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->doubleCheckEmail()V

    :goto_0
    return-void
.end method

.method public Live()V
    .locals 2

    .line 1264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1265
    const-string v1, "intent.action.redmagickyi.live"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1266
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1267
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public MainPage()V
    .locals 7

    .line 1285
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v2, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1291
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const/16 v1, 0xbbb

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1293
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_front_fragment:I

    .line 1294
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v1

    .line 1295
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1296
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    .line 1297
    aget v5, v1, v4

    const/4 v6, 0x1

    aget v1, v1, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1298
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v5, v1, :cond_2

    .line 1299
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1300
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_front_cover:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1304
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1306
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0xfa

    .line 1309
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1310
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1311
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1313
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    new-instance v3, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;

    invoke-direct {v3, p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/view/View;)V

    invoke-static {v2, v0, v4, v3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->showThisFragment(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;IZLcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    :goto_0
    return-void
.end method

.method public Playmate()V
    .locals 3

    .line 1213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v2, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Setting()V
    .locals 3

    .line 1103
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onPause()V

    const/4 v0, 0x1

    .line 1104
    sput-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setPlayIdle(Z)V

    .line 1106
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    const-class v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method public adjustUnityVolume()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "unity_bgm_volume"

    const/high16 v2, 0x42700000    # 60.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 348
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "unity_audio_volume"

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnityVolume: bgmVol "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audioVol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameSpaceActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->adjustVolume(FF)V

    return-void
.end method

.method public changeSkinModeBg(I)V
    .locals 1

    .line 2350
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;-><init>()V

    const/16 v0, 0x3e9

    .line 2351
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setMsgID(I)V

    .line 2352
    const-string v0, "gamespace"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setSceneName(Ljava/lang/String;)V

    .line 2353
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setBgID(I)V

    .line 2354
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1608
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1610
    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    .line 1612
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    if-eqz v0, :cond_1

    .line 1613
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1614
    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    .line 1616
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    if-eqz v0, :cond_2

    .line 1617
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1618
    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    .line 1621
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->unregistAchievementNetworkCallback()V

    .line 1622
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->unregistChangeSkinNetworkCallback()V

    .line 1623
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->unregistLiveCalenderNetworkCallback()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public gotoLoginOrAccoutDetail()V
    .locals 2

    .line 835
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_0

    .line 852
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->AccountInfoDetail(Landroid/app/Activity;)V

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->loginOrRegisterByNotNubia(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public hideModelMotionSubtitle()V
    .locals 2

    .line 2047
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x138f

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 2048
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public initActionAdapter()V
    .locals 6

    .line 552
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mActionCarePreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 554
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->queryAllMotions()Ljava/util/List;

    move-result-object v0

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 557
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 558
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 559
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 560
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer;->supportShowHidenMotion()Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 564
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v3

    if-gez v3, :cond_0

    .line 567
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 570
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 571
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mActionCarePreviewList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public initBackGoundAdapter()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBundleResourceManager:Lcn/nubia/redmagickyi/database/BundleResourceManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/BundleResourceManager;->queryAllBackgrounds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    .line 317
    new-instance v0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    .line 318
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->setBackgroundItemOnclick(Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;)V

    return-void
.end method

.method public inspiredWallpaper()V
    .locals 2

    .line 1182
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.inspiredwallpaper.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1187
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public liveCalender()V
    .locals 1

    .line 1206
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1209
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->loadList(Landroid/content/Context;Z)V

    return-void
.end method

.method public modelLoadFinish()V
    .locals 2

    .line 339
    sget-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->needPlayWeatherMotion:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->playWeatherMotion()V

    const/4 v0, 0x0

    .line 341
    sput-boolean v0, Lcn/nubia/redmagickyi/util/Utils;->needPlayWeatherMotion:Z

    .line 343
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x138a

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 344
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public moraChat()V
    .locals 0

    .line 1202
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->startChatActivity(Landroid/content/Context;)V

    return-void
.end method

.method public moraStore()V
    .locals 3

    .line 1192
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcn/nubia/redmagickyi/network/NetConfig;->MORA_STORE:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1193
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    :catch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const-class v2, Lcn/nubia/redmagickyi/store/MoraStoreEmptyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public notifyNoticeChange()V
    .locals 4

    .line 678
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    .line 681
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/NoticeManager;->queryAllNotice()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeList:Ljava/util/List;

    .line 682
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->setData(Ljava/util/List;)V

    .line 683
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->notifyDataSetChanged()V

    .line 684
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout;->setItemCount(I)V

    .line 685
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->scrollToPosition(I)V

    .line 686
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerAdapter:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result v0

    const/16 v1, 0x8

    if-gtz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 690
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->appUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 693
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->resourceUpdateLayer:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 696
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->bannerLayout:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/BannerLayout;->setVisibility(I)V

    .line 698
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    const/16 v1, 0xfa0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 701
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->popDialogManager:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnNoticeUpdate()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPress()Z
    .locals 2

    .line 772
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 775
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 778
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/shortcut/broadcast/ShortcutBroadcast;->unregistShortcutMessageBroadcast(Landroid/content/Context;)V

    .line 779
    invoke-static {}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->release()V

    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundItemClick(Landroid/view/View;I)V
    .locals 4

    .line 862
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    const/4 p2, 0x0

    move v0, p2

    .line 863
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 864
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mBackgroundList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    .line 865
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 866
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setSelected(Z)V

    goto :goto_1

    .line 868
    :cond_0
    invoke-virtual {v1, p2}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->setSelected(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->notifyDataSetChanged()V

    .line 873
    new-instance p2, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;

    invoke-direct {p2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;-><init>()V

    const/16 v0, 0x3e9

    .line 874
    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setMsgID(I)V

    .line 875
    const-string v0, "gamespace"

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setSceneName(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->setBgID(I)V

    .line 877
    invoke-static {p2}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 878
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v0

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/util/Utils;->setGameSpaceBgId(Landroid/content/Context;I)V

    .line 880
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wallpaper_name"

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mora_wallpaper_used"

    invoke-virtual {p2, p0, v1, v0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackgroundReady()V
    .locals 1

    const/4 v0, 0x0

    .line 1757
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeBackGround(Z)V

    return-void
.end method

.method public onBannerItemClick(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/NoticeBean;I)V
    .locals 0

    .line 885
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->popDialogManager:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/util/PopDialogManager;->showNoticeDialog(Lcn/nubia/redmagickyi/network/bean/NoticeBean;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 793
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_back:I

    if-ne v0, v1, :cond_0

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    .line 795
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->onBackPressed()V

    goto/16 :goto_4

    .line 797
    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_setting:I

    if-ne v0, v1, :cond_1

    .line 798
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Setting()V

    goto/16 :goto_4

    .line 799
    :cond_1
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_volume:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 800
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getMuteMode(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setAudioMute(Z)V

    goto/16 :goto_4

    .line 801
    :cond_2
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->mail:I

    if-eq v0, v1, :cond_f

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->mail_unread_dot:I

    if-ne v0, v1, :cond_3

    goto/16 :goto_3

    .line 803
    :cond_3
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->inspired:I

    if-ne v0, v1, :cond_4

    .line 804
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->inspiredWallpaper()V

    goto/16 :goto_4

    .line 805
    :cond_4
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->morastore:I

    if-ne v0, v1, :cond_5

    .line 806
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraStore()V

    goto/16 :goto_4

    .line 807
    :cond_5
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->morachat:I

    if-ne v0, v1, :cond_6

    .line 808
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraChat()V

    goto/16 :goto_4

    .line 809
    :cond_6
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->livecalender:I

    if-ne v0, v1, :cond_7

    .line 810
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->liveCalender()V

    goto/16 :goto_4

    .line 811
    :cond_7
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_operator_zones:I

    if-ne v0, v1, :cond_8

    .line 812
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ivChangebg:Landroid/view/View;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onModelOperatorSelected(Landroid/view/View;)V

    goto/16 :goto_4

    .line 813
    :cond_8
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_changebg:I

    if-eq v0, v1, :cond_e

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_rotate:I

    if-eq v0, v1, :cond_e

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_changefocus:I

    if-eq v0, v1, :cond_e

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_screenshot:I

    if-ne v0, v1, :cond_9

    goto :goto_2

    .line 815
    :cond_9
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    if-eq v0, v1, :cond_d

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tips_achievement:I

    if-eq v0, v1, :cond_d

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tips_mail:I

    if-eq v0, v1, :cond_d

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tips_changeskin:I

    if-ne v0, v1, :cond_a

    goto :goto_1

    .line 817
    :cond_a
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement:I

    if-eq v0, v1, :cond_c

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->achievement_unread_dot:I

    if-ne v0, v1, :cond_b

    goto :goto_0

    .line 819
    :cond_b
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_front_cover:I

    if-ne v0, v1, :cond_10

    .line 820
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 821
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 822
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 823
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 824
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0xfa

    .line 825
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 826
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 827
    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 828
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 830
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onBackPress()Z

    goto :goto_4

    .line 818
    :cond_c
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Achievement()V

    goto :goto_4

    .line 816
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gotoLoginOrAccoutDetail()V

    goto :goto_4

    .line 814
    :cond_e
    :goto_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onModelOperatorSelected(Landroid/view/View;)V

    goto :goto_4

    .line 802
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Email()V

    :cond_10
    :goto_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1437
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onFriendValueUnSelected()V

    .line 1438
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->backgroundAdapter:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1439
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeBackGround(Z)V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz v0, :cond_1

    .line 1442
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1444
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateUIByOrientation()V

    .line 1445
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getFocalLen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeFocus(Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onFriendValueUnSelected()V
    .locals 1

    .line 1987
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvFriendValueThis:Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1988
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onMotionComing(I)V
    .locals 2

    .line 1993
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMotionListChanged()V
    .locals 1

    .line 1449
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initActionAdapter()V

    .line 1450
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onMotionListChanged()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onFriendValueUnSelected()V

    .line 543
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->hideModelMotionSubtitle()V

    .line 544
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onPause()V

    .line 547
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->setDisableAutoScroll(Z)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 524
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->clearVideoCache()V

    .line 525
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->adjustUnityVolume()V

    .line 526
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getMuteMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->setAudioMute(Z)V

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateMailUnreadUI()V

    .line 530
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateAchievementUnreadUI()V

    .line 531
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateLiveCalenderUnreadUI()V

    .line 532
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsMailUI()V

    .line 533
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsAchievementUI()V

    .line 534
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gameSpaceFuntionZonesController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onResume()V

    .line 537
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeBannerHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->setDisableAutoScroll(Z)V

    :cond_2
    return-void
.end method

.method public onTakeShot(Ljava/lang/String;)V
    .locals 1

    .line 2005
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsScreenshot:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2007
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tipsScreenshot:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2008
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutOperatorZones:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2009
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsScreenShotUI()V

    return-void
.end method

.method public playWeatherMotion()V
    .locals 4

    .line 893
    const-string v0, "magick.weather"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 894
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 896
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "weahter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " motion id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GameSpaceActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 899
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 900
    const-string v3, "mood_type"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 901
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0xbbf

    .line 902
    iput v1, v0, Landroid/os/Message;->what:I

    .line 903
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 905
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method public sceneLoadFinish()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 336
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showBackIcon()V
    .locals 4

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->exit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->exit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 506
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutTitle:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_42_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_42_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const-string p0, "translationX"

    invoke-static {v2, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 507
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 508
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method public updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0xbb8

    const/16 v1, 0xbc6

    const/4 v2, 0x0

    .line 353
    const-string v3, ""

    if-eqz p1, :cond_4

    .line 354
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNubiaAcctClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    .line 355
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->clearLocalIdInfo(Landroid/content/Context;)Z

    move-result p1

    .line 356
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eq v4, v3, :cond_0

    .line 357
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcn/nubia/redmagickyi/network/NetworkUtils;->queryFriendliness(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    :cond_0
    if-nez p1, :cond_1

    .line 359
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->isNeedForceUpdateAccount(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 362
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessage(I)Z

    .line 363
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initFriendValueLayoutState()V

    .line 364
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    if-eqz p1, :cond_2

    .line 365
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/EmailManager;->deleteAllEmail()V

    .line 367
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/NoticeManager;->deleteAllNotice()V

    .line 370
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessage(I)Z

    .line 371
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->deleteAll()V

    .line 372
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    goto :goto_0

    .line 389
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->clearNubiaAcctInfo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 390
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->isNeedForceUpdateAccount(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 391
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    const/4 v3, 0x1

    invoke-static {p1, v2, v2, v3}, Lcn/nubia/redmagickyi/util/Utils;->setFriendness(Landroid/content/Context;III)V

    .line 393
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initFriendValueLayoutState()V

    .line 395
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->cancleUpdateWebResource()V

    .line 396
    invoke-static {v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->cancelLoadList(Z)V

    .line 397
    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->cancelLoadList(Z)V

    .line 398
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessage(I)Z

    .line 399
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    if-eqz p1, :cond_6

    .line 400
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/EmailManager;->deleteAllEmail()V

    .line 402
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    if-eqz p1, :cond_7

    .line 403
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/NoticeManager;->deleteAllNotice()V

    .line 405
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->tvFriendValueThis:Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    .line 406
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setVisibility(I)V

    .line 408
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->layoutHeart:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9

    .line 409
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 411
    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessage(I)Z

    .line 413
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->deleteAll()V

    .line 416
    :cond_a
    :goto_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xbbb

    .line 417
    iput v0, p1, Landroid/os/Message;->what:I

    .line 418
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlNubiaLoginCheck()V

    .line 421
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/Utils;->setForceUpdateAccount(Landroid/content/Context;Z)V

    return-void
.end method

.method public updateAchievementUnreadUI()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->achievementUnreadDot:Landroid/widget/ImageView;

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->isAchievementCanReceive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method

.method public updateFriendValueLayoutState(ZIILjava/lang/Integer;)V
    .locals 8

    .line 1887
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    new-instance v7, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;ZIILjava/lang/Integer;)V

    invoke-virtual {v0, v7}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateLiveCalenderUnreadUI()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ModuleCustomer$LiveCalender;->enable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->liveCalenderUnreadDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 448
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->isListChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraStore:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 450
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 451
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 453
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraStore:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 455
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->liveCalenderUnreadDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 456
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 458
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 461
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 463
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->moraStore:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public updateMailUnreadUI()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->emailUnreadDot:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/EmailManager;->isAllReaded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateTipsAchievementUI()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 478
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method

.method public updateTipsChangeSkinUI(Landroid/view/View;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 488
    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 490
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/os/Message;)V

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method

.method public updateTipsMailUI()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x138b

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 469
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method

.method public updateTipsScreenShotUI()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const/16 v1, 0x138e

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->removeMessages(I)V

    .line 499
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelOperateHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
