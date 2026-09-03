.class public Lcom/unity3d/player/UnityPlayer;
.super Landroid/widget/FrameLayout;
.source "UnityPlayer.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/unity3d/player/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityPlayer$e;,
        Lcom/unity3d/player/UnityPlayer$c;,
        Lcom/unity3d/player/UnityPlayer$a;,
        Lcom/unity3d/player/UnityPlayer$f;,
        Lcom/unity3d/player/UnityPlayer$d;,
        Lcom/unity3d/player/UnityPlayer$b;
    }
.end annotation


# static fields
.field private static final ANR_TIMEOUT_SECONDS:I = 0x4

.field private static final RUN_STATE_CHANGED_MSG_CODE:I = 0x8dd

.field private static final SPLASH_ENABLE_METADATA_NAME:Ljava/lang/String; = "unity.splash-enable"

.field private static final SPLASH_MODE_METADATA_NAME:Ljava/lang/String; = "unity.splash-mode"

.field private static final TANGO_ENABLE_METADATA_NAME:Ljava/lang/String; = "unity.tango-enable"

.field public static currentActivity:Landroid/app/Activity;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGlView:Landroid/view/View;

.field private mInitialScreenOrientation:I

.field private mIsFullscreen:Z

.field private mKillingIsMyBusiness:Landroid/content/BroadcastReceiver;

.field private mMainDisplayOverride:Z

.field private mNaturalOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPlayerType:Lcom/unity3d/player/IPlayer$Type;

.field private mProcessKillRequested:Z

.field private mQuitting:Z

.field mSoftInputDialog:Lcom/unity3d/player/l;

.field private mState:Lcom/unity3d/player/o;

.field private mVideoPlayerProxy:Lcom/unity3d/player/r;

.field private m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

.field private m_AddPhoneCallListener:Z

.field private m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

.field private m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

.field private m_ClipboardManager:Landroid/content/ClipboardManager;

.field private final m_Events:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private m_FakeListener:Lcom/unity3d/player/UnityPlayer$a;

.field private m_HFPStatus:Lcom/unity3d/player/HFPStatus;

.field m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

.field private m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

.field private m_PersistentUnitySurface:Lcom/unity3d/player/j;

.field private m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$c;

.field private m_SplashScreen:Lcom/unity3d/player/m;

.field private m_TelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

.field private m_launchUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1337
    new-instance v0, Lcom/unity3d/player/n;

    invoke-direct {v0}, Lcom/unity3d/player/n;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/player/n;->a()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 4

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    .line 114
    sget-object p2, Lcom/unity3d/player/IPlayer$Type;->SurfaceView:Lcom/unity3d/player/IPlayer$Type;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/unity3d/player/IPlayer$Type;->TextureView:Lcom/unity3d/player/IPlayer$Type;

    :goto_0
    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer;->mPlayerType:Lcom/unity3d/player/IPlayer$Type;

    const/4 p2, -0x1

    .line 116
    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->mInitialScreenOrientation:I

    const/4 p2, 0x0

    .line 117
    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer;->mMainDisplayOverride:Z

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mIsFullscreen:Z

    .line 119
    new-instance v1, Lcom/unity3d/player/o;

    invoke-direct {v1}, Lcom/unity3d/player/o;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    .line 120
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_Events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mKillingIsMyBusiness:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 123
    new-instance v2, Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$1;)V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    .line 124
    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer;->m_AddPhoneCallListener:Z

    .line 125
    new-instance v2, Lcom/unity3d/player/UnityPlayer$c;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$1;)V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$c;

    .line 126
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    .line 127
    new-instance v2, Lcom/unity3d/player/UnityPlayer$a;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_FakeListener:Lcom/unity3d/player/UnityPlayer$a;

    .line 128
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    .line 129
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    .line 130
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    .line 131
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_launchUri:Landroid/net/Uri;

    .line 132
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

    .line 134
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mProcessKillRequested:Z

    .line 135
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    .line 136
    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer;->m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    .line 139
    instance-of p3, p1, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz p3, :cond_1

    .line 140
    move-object p3, p1

    check-cast p3, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p1

    .line 142
    :goto_1
    instance-of v1, p3, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 143
    check-cast p3, Landroid/app/Activity;

    sput-object p3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 144
    invoke-virtual {p3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p3

    iput p3, p0, Lcom/unity3d/player/UnityPlayer;->mInitialScreenOrientation:I

    .line 145
    sget-object p3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer;->m_launchUri:Landroid/net/Uri;

    .line 149
    :cond_2
    sget-object p3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/unity3d/player/UnityPlayer;->EarlyEnableFullScreenIfVrLaunched(Landroid/app/Activity;)V

    .line 150
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 152
    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p3}, Lcom/unity3d/player/UnityPlayer;->getNaturalOrientation(I)I

    move-result p3

    iput p3, p0, Lcom/unity3d/player/UnityPlayer;->mNaturalOrientation:I

    .line 153
    sget-object p3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 154
    new-instance p3, Lcom/unity3d/player/m;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/unity3d/player/m$a1;->values()[Lcom/unity3d/player/m$a1;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashMode()I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p3, v1, v2}, Lcom/unity3d/player/m;-><init>(Landroid/content/Context;Lcom/unity3d/player/m$a1;)V

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/m;

    .line 155
    invoke-virtual {p0, p3}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    .line 158
    :cond_3
    iget-object p3, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/unity3d/player/UnityPlayer;->loadNative(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p3

    .line 159
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 160
    new-instance v1, Lcom/unity3d/player/j;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unity3d/player/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_PersistentUnitySurface:Lcom/unity3d/player/j;

    .line 163
    :cond_4
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 164
    const-string p1, "Your hardware does not support this application."

    const/4 v0, 0x6

    .line 165
    invoke-static {v0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 167
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Failure to initialize!"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    const-string p0, "OK"

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Your hardware does not support this application.\n\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\n\n Press OK to quit."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 172
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 174
    :cond_5
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->initJni(Landroid/content/Context;)V

    .line 175
    iget-object p3, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {p3, v0}, Lcom/unity3d/player/o;->c(Z)V

    .line 176
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->CreateGlView()Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    .line 177
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->GetGlViewContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    .line 179
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/m;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    .line 180
    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    .line 181
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->hideStatusBar()V

    .line 182
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_TelephonyManager:Landroid/telephony/TelephonyManager;

    .line 183
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_ClipboardManager:Landroid/content/ClipboardManager;

    .line 184
    new-instance p1, Lcom/unity3d/player/Camera2Wrapper;

    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unity3d/player/Camera2Wrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    .line 185
    new-instance p1, Lcom/unity3d/player/HFPStatus;

    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unity3d/player/HFPStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    .line 186
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer$e;->start()V

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 2

    .line 108
    sget-object p2, Lcom/unity3d/player/IPlayer$Type;->SurfaceView:Lcom/unity3d/player/IPlayer$Type;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method private CreateGlView()Landroid/view/View;
    .locals 6

    .line 247
    sget-object v0, Lcom/unity3d/player/UnityPlayer$28;->$SwitchMap$com$unity3d$player$IPlayer$Type:[I

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mPlayerType:Lcom/unity3d/player/IPlayer$Type;

    invoke-virtual {v1}, Lcom/unity3d/player/IPlayer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "id"

    const-string v2, "unitySurfaceView"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 315
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 316
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    .line 317
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->IsWindowTranslucent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 319
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 324
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/UnityPlayer$4;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$4;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 346
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 347
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    return-object v0

    .line 249
    :cond_1
    new-instance v0, Landroid/view/TextureView;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 250
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setId(I)V

    .line 251
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->IsWindowTranslucent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 256
    :goto_1
    new-instance v1, Lcom/unity3d/player/UnityPlayer$3;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$3;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 310
    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 311
    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setFocusableInTouchMode(Z)V

    return-object v0
.end method

.method private DisableStaticSplashScreen()V
    .locals 1

    .line 216
    new-instance v0, Lcom/unity3d/player/UnityPlayer$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$2;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private EarlyEnableFullScreenIfVrLaunched(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.VR_LAUNCH"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x7

    .line 227
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private GetGlViewContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "game_view_content_description"

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private IsWindowTranslucent()Z
    .locals 4

    .line 233
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 236
    :cond_0
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 237
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010058

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 238
    iget p0, p0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public static UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 423
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Native libraries not loaded - dropping message for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/unity3d/player/UnityPlayer;->mMainDisplayOverride:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->shutdown()V

    return-void
.end method

.method static synthetic access$1200(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativePause()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1302(Lcom/unity3d/player/UnityPlayer;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeLowMemory()V

    return-void
.end method

.method static synthetic access$1500(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    return-void
.end method

.method static synthetic access$1600(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputLostFocus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeReportKeyboardConfigChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->finish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputCanceled()V

    return-void
.end method

.method static synthetic access$2100(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputClosed()V

    return-void
.end method

.method static synthetic access$2300(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputSelection(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/unity3d/player/UnityPlayer;IIII)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputArea(IIII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetKeyboardIsVisible(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/unity3d/player/UnityPlayer;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->CreateGlView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2702(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/r;)Lcom/unity3d/player/r;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeIsAutorotationOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/unity3d/player/UnityPlayer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/unity3d/player/UnityPlayer;->mInitialScreenOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/m;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/m;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    return-object p0
.end method

.method static synthetic access$302(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/m;)Lcom/unity3d/player/m;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/m;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/unity3d/player/UnityPlayer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/unity3d/player/UnityPlayer;->mNaturalOrientation:I

    return p0
.end method

.method static synthetic access$3200(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeMuteMasterAudio(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->DisableStaticSplashScreen()V

    return-void
.end method

.method static synthetic access$3600(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRender()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetLaunchURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeOrientationChanged(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_PersistentUnitySurface:Lcom/unity3d/player/j;

    return-object p0
.end method

.method static synthetic access$600(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->sendSurfaceChangedEvent()V

    return-void
.end method

.method static synthetic access$700(Lcom/unity3d/player/UnityPlayer;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSendSurfaceChangedEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeRecreateGfxState(ILandroid/view/Surface;)V

    return-void
.end method

.method private checkResumePlayer()V
    .locals 2

    .line 667
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 668
    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 671
    :goto_0
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/o;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/o;->d(Z)V

    .line 673
    new-instance v0, Lcom/unity3d/player/UnityPlayer$11;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$11;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Ljava/lang/Runnable;)V

    .line 686
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer$e;->b()V

    :cond_1
    return-void
.end method

.method private finish()V
    .locals 1

    .line 436
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    .line 437
    instance-of v0, p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v0, :cond_0

    .line 438
    check-cast p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 440
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method private getNaturalOrientation(I)I
    .locals 2

    .line 192
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    if-eq p1, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    :cond_2
    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method private getSplashEnabled()Z
    .locals 1

    .line 1103
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "unity.splash-enable"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTangoEnabled()Z
    .locals 1

    .line 1111
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "unity.tango-enable"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideStatusBar()V
    .locals 1

    .line 1162
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    .line 1163
    instance-of v0, p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v0, :cond_0

    .line 1164
    check-cast p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 1166
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1167
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void
.end method

.method private final native initJni(Landroid/content/Context;)V
.end method

.method protected static loadLibraryStatic(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 748
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v0

    .line 751
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v0
.end method

.method private static loadNative(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libmain.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    :try_start_0
    const-string v1, "main"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/unity3d/player/NativeLoader;->load(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 834
    invoke-static {}, Lcom/unity3d/player/o;->a()V

    .line 835
    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x6

    .line 838
    const-string v0, "NativeLoader.load failure, Unity libraries were not loaded."

    invoke-static {p0, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 830
    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/UnityPlayer;->logLoadLibMainError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 828
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/UnityPlayer;->logLoadLibMainError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logLoadLibMainError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 817
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load \'libmain.so\'\n\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    .line 818
    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object p0
.end method

.method private final native nativeApplicationUnload()V
.end method

.method private final native nativeDone()Z
.end method

.method private final native nativeFocusChanged(Z)V
.end method

.method private final native nativeInjectEvent(Landroid/view/InputEvent;)Z
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private final native nativeLowMemory()V
.end method

.method private final native nativeMuteMasterAudio(Z)V
.end method

.method private final native nativeOrientationChanged(II)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeRecreateGfxState(ILandroid/view/Surface;)V
.end method

.method private final native nativeRender()Z
.end method

.method private final native nativeReportKeyboardConfigChanged()V
.end method

.method private final native nativeRestartActivityIndicator()V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSendSurfaceChangedEvent()V
.end method

.method private final native nativeSetInputArea(IIII)V
.end method

.method private final native nativeSetInputSelection(II)V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSetKeyboardIsVisible(Z)V
.end method

.method private final native nativeSetLaunchURL(Ljava/lang/String;)V
.end method

.method private final native nativeSoftInputCanceled()V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeSoftInputLostFocus()V
.end method

.method private static native nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method private pauseUnity()V
    .locals 7

    const/4 v0, 0x0

    .line 573
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    .line 574
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 576
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 578
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    new-instance v3, Lcom/unity3d/player/UnityPlayer$8;

    invoke-direct {v3, p0, v0}, Lcom/unity3d/player/UnityPlayer$8;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    goto :goto_0

    .line 586
    :cond_0
    new-instance v3, Lcom/unity3d/player/UnityPlayer$9;

    invoke-direct {v3, p0, v0}, Lcom/unity3d/player/UnityPlayer$9;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    .line 599
    :goto_0
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v4, v3}, Lcom/unity3d/player/UnityPlayer$e;->a(Ljava/lang/Runnable;)V

    const/4 v3, 0x5

    .line 602
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x4

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 603
    const-string v4, "Timeout while trying to pause the Unity Engine."

    invoke-static {v3, v4}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 606
    :catch_0
    const-string v4, "UI thread got interrupted while trying to pause the Unity Engine."

    invoke-static {v3, v4}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 609
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    if-lez v0, :cond_2

    .line 610
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/o;->d(Z)V

    .line 615
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/o;->b(Z)V

    .line 616
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AddPhoneCallListener:Z

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_TelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$c;

    invoke-virtual {v0, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    return-void
.end method

.method private queueGLThreadEvent(Lcom/unity3d/player/UnityPlayer$f;)V
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private queueGLThreadEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 1138
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v1, :cond_0

    .line 1140
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_Events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private sendSurfaceChangedEvent()V
    .locals 1

    .line 354
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lcom/unity3d/player/UnityPlayer$5;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$5;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    .line 360
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeDone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mProcessKillRequested:Z

    .line 658
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/o;->c(Z)V

    return-void
.end method

.method private swapViews(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1202
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1203
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 1208
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/unity3d/player/UnityPlayer;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/unity3d/player/UnityPlayer;

    if-eq v3, p0, :cond_3

    .line 1209
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1210
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1213
    :cond_2
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    .line 1214
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    .line 1215
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p2, :cond_4

    .line 1218
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_4

    const/16 p1, 0x8

    .line 1219
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->removeView(Landroid/view/View;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1224
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_5
    return-void
.end method

.method private static unloadNative()V
    .locals 2

    .line 844
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    invoke-static {}, Lcom/unity3d/player/NativeLoader;->unload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcom/unity3d/player/o;->b()V

    goto :goto_0

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unable to unload libraries from libmain.so"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDisplayInternal(ILandroid/view/Surface;)Z
    .locals 3

    .line 371
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 373
    new-instance v1, Lcom/unity3d/player/UnityPlayer$6;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/unity3d/player/UnityPlayer$6;-><init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 381
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityPlayer$e;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityPlayer$e;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    const/4 p0, 0x5

    .line 391
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 392
    const-string p1, "Timeout while trying detaching primary window."

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 395
    :catch_0
    const-string p1, "UI thread got interrupted while trying to detach the primary window from the Unity Engine."

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private updateGLDisplay(ILandroid/view/Surface;)V
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mMainDisplayOverride:Z

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->updateDisplayInternal(ILandroid/view/Surface;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPhoneCallListener()V
    .locals 2

    const/4 v0, 0x1

    .line 764
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AddPhoneCallListener:Z

    .line 765
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_TelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$c;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public addViewToPlayer(Landroid/view/View;Z)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->swapViews(Landroid/view/View;Landroid/view/View;)V

    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 1232
    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    move p2, v1

    .line 1233
    :goto_2
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_3

    move p0, v0

    goto :goto_3

    :cond_3
    move p0, v1

    :goto_3
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :cond_5
    :goto_4
    if-nez v0, :cond_7

    const/4 v1, 0x6

    if-nez p1, :cond_6

    .line 1237
    const-string p1, "addViewToPlayer: Failure adding view to hierarchy"

    invoke-static {v1, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_6
    if-nez p2, :cond_7

    if-nez p0, :cond_7

    .line 1241
    const-string p0, "addViewToPlayer: Failure removing old view from hierarchy"

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_7
    return v0
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 715
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 716
    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto :goto_0

    .line 717
    :cond_0
    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 718
    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    .line 722
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    if-eqz p0, :cond_2

    .line 723
    invoke-virtual {p0}, Lcom/unity3d/player/r;->c()V

    .line 727
    :cond_2
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 728
    invoke-virtual {p0}, Lcom/unity3d/player/GoogleVrProxy;->c()V

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 487
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->a()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PersistentUnitySurface:Lcom/unity3d/player/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0}, Lcom/unity3d/player/j;->a()V

    .line 493
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_PersistentUnitySurface:Lcom/unity3d/player/j;

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {v0}, Lcom/unity3d/player/Camera2Wrapper;->a()V

    .line 498
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Lcom/unity3d/player/HFPStatus;->a()V

    .line 503
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

    if-eqz v0, :cond_4

    .line 507
    invoke-virtual {v0}, Lcom/unity3d/player/NetworkConnectivity;->b()V

    .line 508
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

    :cond_4
    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    .line 512
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 513
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 516
    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$e;->a()V

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/UnityPlayer$e;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$e;->interrupt()V

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mKillingIsMyBusiness:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 525
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 528
    :cond_6
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mKillingIsMyBusiness:Landroid/content/BroadcastReceiver;

    .line 529
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 530
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->removeAllViews()V

    .line 533
    :cond_7
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mProcessKillRequested:Z

    if-eqz v0, :cond_9

    .line 534
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    if-eqz v0, :cond_8

    .line 535
    invoke-interface {v0}, Lcom/unity3d/player/IUnityPlayerLifecycleEvents;->onUnityPlayerQuitted()V

    goto :goto_1

    .line 537
    :cond_8
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->onUnityPlayerQuitted()V

    .line 540
    :goto_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    .line 543
    :cond_9
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->unloadNative()V

    return-void
.end method

.method protected disableLogger()V
    .locals 0

    const/4 p0, 0x1

    .line 1134
    sput-boolean p0, Lcom/unity3d/player/g;->a:Z

    return-void
.end method

.method public displayChanged(ILandroid/view/Surface;)Z
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mMainDisplayOverride:Z

    .line 408
    new-instance v0, Lcom/unity3d/player/UnityPlayer$7;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$7;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 419
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->updateDisplayInternal(ILandroid/view/Surface;)Z

    move-result p0

    return p0
.end method

.method protected executeGLThreadJobs()V
    .locals 1

    .line 1127
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getClipboardText()Ljava/lang/String;
    .locals 0

    .line 984
    const-string p0, ""

    return-object p0
.end method

.method protected getKeyboardLayout()Ljava/lang/String;
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/l;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getLaunchURL()Ljava/lang/String;
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_launchUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getNetworkConnectivity()I
    .locals 2

    .line 702
    sget-boolean v0, Lcom/unity3d/player/k;->c:Z

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Lcom/unity3d/player/NetworkConnectivity;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unity3d/player/NetworkConnectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/NetworkConnectivity;

    invoke-virtual {p0}, Lcom/unity3d/player/NetworkConnectivity;->a()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkProxySettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1275
    const-string p0, "http:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1278
    const-string p0, "http.proxyHost"

    const-string p1, "http.proxyPort"

    goto :goto_0

    .line 1280
    :cond_0
    const-string p0, "https:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 1286
    :cond_1
    const-string p0, "https.proxyHost"

    const-string p1, "https.proxyPort"

    .line 1289
    :goto_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1292
    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    const-string p1, "http.nonProxyHosts"

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xa

    .line 1296
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .locals 0

    .line 474
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method protected getSplashMode()I
    .locals 1

    .line 1119
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "unity.splash-mode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected hideSoftInput()V
    .locals 1

    .line 870
    new-instance v0, Lcom/unity3d/player/UnityPlayer$13;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$13;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(IZ)V
    .locals 0

    return-void
.end method

.method protected initializeGoogleAr()Z
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getTangoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    new-instance v0, Lcom/unity3d/player/GoogleARCoreApi;

    invoke-direct {v0}, Lcom/unity3d/player/GoogleARCoreApi;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    .line 1001
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/GoogleARCoreApi;->initializeARCore(Landroid/app/Activity;)V

    .line 1002
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    invoke-virtual {p0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected initializeGoogleVr()Z
    .locals 6

    .line 1012
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1013
    invoke-static {p0}, Lcom/unity3d/player/GoogleVrApi;->a(Lcom/unity3d/player/f;)V

    .line 1014
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x6

    .line 1015
    const-string v0, "Unable to create Google VR subsystem."

    invoke-static {p0, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v1

    .line 1020
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1021
    new-instance v3, Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$22;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    .line 1028
    new-instance v4, Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {v4, p0, v0, v3, v2}, Lcom/unity3d/player/UnityPlayer$23;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/GoogleVrProxy;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x5

    .line 1043
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1044
    const-string v0, "Timeout while trying to initialize Google VR."

    invoke-static {p0, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1052
    :cond_1
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->a()Z

    move-result p0

    return p0

    :catch_0
    move-exception v0

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UI thread was interrupted while initializing Google VR. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v1
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 1

    .line 1173
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeInjectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected isFinishing()Z
    .locals 4

    .line 1154
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    .line 1155
    instance-of v1, v0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v1, :cond_0

    .line 1156
    check-cast v0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1158
    :cond_0
    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    return v2
.end method

.method protected kill()V
    .locals 0

    .line 547
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .locals 0

    .line 760
    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->loadLibraryStatic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public lowMemory()V
    .locals 1

    .line 647
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Lcom/unity3d/player/UnityPlayer$10;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$10;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public newIntent(Landroid/content/Intent;)V
    .locals 0

    .line 482
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_launchUri:Landroid/net/Uri;

    .line 483
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer$e;->e()V

    return-void
.end method

.method protected notifyOnUnityPlayerUnloaded()V
    .locals 1

    .line 1084
    new-instance v0, Lcom/unity3d/player/UnityPlayer$26;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$26;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1181
    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1189
    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1185
    invoke-virtual {p0, p3}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1177
    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1193
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->pauseARCore()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Lcom/unity3d/player/r;->a()V

    .line 560
    :cond_1
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->pauseGvrLayout()V

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0}, Lcom/unity3d/player/AudioVolumeHandler;->a()V

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    .line 569
    :cond_3
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->pauseUnity()V

    return-void
.end method

.method postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 463
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public quit()V
    .locals 0

    .line 478
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    return-void
.end method

.method public removeViewFromPlayer(Landroid/view/View;)V
    .locals 3

    .line 1249
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->swapViews(Landroid/view/View;Landroid/view/View;)V

    .line 1250
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1251
    :goto_0
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mGlView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 p0, 0x6

    if-nez p1, :cond_3

    .line 1254
    const-string p1, "removeViewFromPlayer: Failure removing view from hierarchy"

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    .line 1258
    const-string p1, "removeVireFromPlayer: Failure agging old view to hierarchy"

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    .line 1269
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void
.end method

.method protected reportSoftInputArea(Landroid/graphics/Rect;)V
    .locals 1

    .line 962
    new-instance v0, Lcom/unity3d/player/UnityPlayer$20;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$20;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void
.end method

.method protected reportSoftInputIsVisible(Z)V
    .locals 1

    .line 970
    new-instance v0, Lcom/unity3d/player/UnityPlayer$21;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$21;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void
.end method

.method protected reportSoftInputSelection(II)V
    .locals 1

    .line 954
    new-instance v0, Lcom/unity3d/player/UnityPlayer$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$19;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V

    .line 937
    :cond_0
    new-instance v0, Lcom/unity3d/player/UnityPlayer$18;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unity3d/player/UnityPlayer$18;-><init>(Lcom/unity3d/player/UnityPlayer;ZLjava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueGLThreadEvent(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void
.end method

.method protected requestUserAuthorization(Ljava/lang/String;)V
    .locals 1

    .line 695
    sget-boolean p0, Lcom/unity3d/player/k;->b:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 696
    sget-object p0, Lcom/unity3d/player/k;->d:Lcom/unity3d/player/e;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-interface {p0, v0, p1}, Lcom/unity3d/player/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/o;->b(Z)V

    .line 629
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {v0}, Lcom/unity3d/player/r;->b()V

    .line 633
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->checkResumePlayer()V

    .line 634
    invoke-static {}, Lcom/unity3d/player/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRestartActivityIndicator()V

    .line 639
    :cond_2
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->b()V

    .line 643
    :cond_3
    new-instance v0, Lcom/unity3d/player/AudioVolumeHandler;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unity3d/player/AudioVolumeHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    return-void
.end method

.method runOnAnonymousThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 447
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 451
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    .line 452
    instance-of v0, p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v0, :cond_0

    .line 453
    check-cast p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 455
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 456
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    .line 458
    const-string p1, "Not running Unity from an Activity; ignored..."

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected setCharacterLimit(I)V
    .locals 1

    .line 896
    new-instance v0, Lcom/unity3d/player/UnityPlayer$15;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$15;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setClipboardText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setHideInputField(Z)V
    .locals 1

    .line 907
    new-instance v0, Lcom/unity3d/player/UnityPlayer$16;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$16;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSelection(II)V
    .locals 1

    .line 918
    new-instance v0, Lcom/unity3d/player/UnityPlayer$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$17;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSoftInputStr(Ljava/lang/String;)V
    .locals 1

    .line 885
    new-instance v0, Lcom/unity3d/player/UnityPlayer$14;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$14;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;IZ)V
    .locals 11

    .line 854
    new-instance v10, Lcom/unity3d/player/UnityPlayer$12;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/player/UnityPlayer$12;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;IZ)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Lcom/unity3d/player/UnityPlayer;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)Z
    .locals 14

    move-object v0, p0

    .line 1056
    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    if-nez v1, :cond_0

    .line 1057
    new-instance v1, Lcom/unity3d/player/r;

    invoke-direct {v1, p0}, Lcom/unity3d/player/r;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, v0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    .line 1061
    :cond_0
    iget-object v2, v0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/r;

    iget-object v3, v0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    move/from16 v1, p6

    int-to-long v9, v1

    move/from16 v1, p7

    int-to-long v11, v1

    new-instance v13, Lcom/unity3d/player/UnityPlayer$24;

    invoke-direct {v13, p0}, Lcom/unity3d/player/UnityPlayer$24;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v13}, Lcom/unity3d/player/r;->a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/r$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    new-instance v2, Lcom/unity3d/player/UnityPlayer$25;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$25;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return v1
.end method

.method protected skipPermissionsDialog()Z
    .locals 1

    .line 691
    sget-boolean p0, Lcom/unity3d/player/k;->b:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/unity3d/player/k;->d:Lcom/unity3d/player/e;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-interface {p0, v0}, Lcom/unity3d/player/e;->a(Landroid/app/Activity;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startOrientationListener(I)Z
    .locals 4

    .line 1306
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    .line 1307
    const-string p0, "Orientation Listener already started."

    invoke-static {v2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v1

    .line 1310
    :cond_0
    new-instance v0, Lcom/unity3d/player/UnityPlayer$27;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, p1}, Lcom/unity3d/player/UnityPlayer$27;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1315
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1316
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    const/4 p0, 0x1

    return p0

    .line 1319
    :cond_1
    const-string p0, "Orientation Listener cannot detect orientation."

    invoke-static {v2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v1
.end method

.method public stopOrientationListener()Z
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    const/4 p0, 0x5

    .line 1327
    const-string v0, "Orientation Listener was not started."

    invoke-static {p0, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1330
    :cond_0
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 1331
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 p0, 0x1

    return p0
.end method

.method protected toggleGyroscopeSensor(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_FakeListener:Lcom/unity3d/player/UnityPlayer$a;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_FakeListener:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method

.method public unload()V
    .locals 0

    .line 662
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeApplicationUnload()V

    return-void
.end method

.method public windowFocusChanged(Z)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/o;->a(Z)V

    .line 735
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 737
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer$e;->c()V

    goto :goto_0

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer$e;->d()V

    .line 742
    :goto_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->checkResumePlayer()V

    :cond_1
    return-void
.end method
