.class public Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "RedmagicCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;
.implements Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;
    }
.end annotation


# static fields
.field private static final FINISH_TIMEOUT:J = 0xc350L

.field private static final MSG_FINISH_ACTIVITY:I = 0x4

.field private static final MSG_GET_CURRENT_POSITION:I = 0x3

.field private static final MSG_PLAY_RINGTONE:I = 0x5

.field private static final MSG_SHOW_TIPS_CALL_DROP:I = 0x2

.field private static final MSG_SHOW_TIPS_SIGNAL_BAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallFragment"

.field private static final TRACK_EVENT_DISCONNECT_REASON_FINISH:Ljava/lang/String; = "finish"

.field private static final TRACK_EVENT_DISCONNECT_REASON_HANGUP:Ljava/lang/String; = "hang_up"

.field private static final TRACK_EVENT_DISCONNECT_REASON_REJECT:Ljava/lang/String; = "reject"

.field private static final TRACK_EVENT_PERMISSIONS_OPTIONS_ACCEPT:Ljava/lang/String; = "accept"

.field private static final TRACK_EVENT_PERMISSIONS_OPTIONS_REFUSE:Ljava/lang/String; = "refuse"

.field private static final VIDEO_PATH:Ljava/lang/String; = "video/magic_elves_call.mp4"


# instance fields
.field private audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

.field private bitmapFristFrame:Landroid/graphics/Bitmap;

.field private callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

.field private imgHangUpPhone:Landroid/widget/ImageView;

.field private inflate:Landroid/view/View;

.field private layoutCallBegin:Landroid/view/ViewGroup;

.field private layoutKeyguard:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private preview:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

.field private previewController:Lcn/nubia/redmagickyi/util/CameraPreviewController;

.field private previewMask:Landroid/view/View;

.field private trackEventDisconnectReason:Ljava/lang/String;

.field private trackEventDuration:Ljava/lang/Integer;

.field private tvTips:Landroid/widget/TextView;

.field private vibrator:Landroid/os/Vibrator;

.field private videoView:Lcn/nubia/redmagickyi/util/VideoView;

.field private viewDefaultBg:Landroid/widget/ImageView;

.field private viewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 92
    const-string v0, "reject"

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDuration:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->viewDefaultBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->tvTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->imgHangUpPhone:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/util/VideoView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->exit(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->inflate:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;J)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->playRingtone(J)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 144
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private exit(Z)V
    .locals 6

    .line 405
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->finish()V

    if-eqz p1, :cond_1

    .line 410
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 414
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->NOTIFICATION_DEFAULT_CHANNEL_ID:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "Redmagic_call"

    invoke-direct {v0, v1, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 415
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const v2, -0xffff01

    .line 416
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 418
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.redmagickyi.main"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xa000000

    const/4 v3, -0x1

    .line 421
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 422
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Lcn/nubia/redmagickyi/util/Utils;->NOTIFICATION_DEFAULT_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v2, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_icon:I

    .line 424
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 425
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->redmagic_call_notification_title:I

    .line 429
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->redmagic_call_notification_content:I

    .line 430
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private initAudioFocus()V
    .locals 3

    .line 109
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "729"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "769"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "779"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "789"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "799"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "809"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcn/nubia/redmagickyi/util/AudioFocus;-><init>(Landroid/content/Context;ZLcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    .line 139
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->registAudioFocus()V

    :cond_1
    return-void
.end method

.method private onSlideOpen(Z)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 290
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->stopRingtone()V

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->layoutKeyguard:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->setOperationCallListener(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;)V

    .line 292
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->layoutKeyguard:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->stopAnimation()V

    if-eqz p1, :cond_0

    .line 294
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrateAsButtonClick()V

    .line 295
    const-string p1, "hang_up"

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->showOnCallingView()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrateAsButtonClick()V

    .line 299
    const-string p1, "reject"

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    .line 300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 301
    iput v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    .line 302
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 303
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private playRingtone(J)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 197
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 198
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private showCallBeginDisplay()V
    .locals 3

    .line 157
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_call_begin:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->layoutCallBegin:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_keyguard:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->layoutKeyguard:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    .line 160
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->setOperationCallListener(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->layoutKeyguard:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->startAnimation()V

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getVideoThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->bitmapFristFrame:Landroid/graphics/Bitmap;

    .line 165
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->acquireWakeLock()V

    const-wide/16 v0, 0x0

    .line 166
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->playRingtone(J)V

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 168
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 169
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 170
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const-wide/32 v1, 0xc350

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showOnCallingView()V
    .locals 3

    .line 175
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->vs:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->viewStub:Landroid/view/ViewStub;

    .line 176
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->inflate:Landroid/view/View;

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->inflate:Landroid/view/View;

    .line 178
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->view_default_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->viewDefaultBg:Landroid/widget/ImageView;

    .line 179
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_hang_up_phone:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->imgHangUpPhone:Landroid/widget/ImageView;

    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->imgHangUpPhone:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_tips:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->tvTips:Landroid/widget/TextView;

    const/4 v2, 0x4

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->preview_mask:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->previewMask:Landroid/view/View;

    .line 185
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->preview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->preview:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    .line 186
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setMoveable(Z)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->preview:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->layoutCallBegin:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    new-instance v0, Lcn/nubia/redmagickyi/util/CameraPreviewController;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->preview:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->previewMask:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/FloatSurfaceView;Landroid/view/View;Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->previewController:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    .line 190
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->resize()V

    :cond_0
    return-void
.end method

.method private stopRingtone()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 204
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 205
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 206
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private vibrateAsButtonClick()V
    .locals 2

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1e

    .line 321
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 390
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    sget-object v2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v3, "Mora_call_answer"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "disconnect_reason"

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    const-string v2, "cn.nubia.setupwizard"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 396
    const-string v0, "finish"

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 7

    .line 437
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "video/magic_elves_call.mp4"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 441
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const-wide/16 v0, 0x1

    .line 442
    invoke-virtual {v6, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 444
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 450
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    .line 448
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 453
    :goto_3
    throw p0
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 580
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1702

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 583
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 584
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 585
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public onAnswer()V
    .locals 2

    .line 309
    const-string v0, "CallFragment"

    const-string v1, "onAnswer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->onSlideOpen(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->imgHangUpPhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->exit(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_hang_up_phone:I

    if-ne p1, v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrateAsButtonClick()V

    .line 278
    const-string p1, "hang_up"

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDisconnectReason:Ljava/lang/String;

    .line 279
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->trackEventDuration:Ljava/lang/Integer;

    .line 280
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessage(I)Z

    .line 282
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->requestWindowFeature(I)Z

    .line 99
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->hideBottomUIMenu()V

    .line 101
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_redmagic_call:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->setContentView(I)V

    .line 102
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    .line 103
    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrator:Landroid/os/Vibrator;

    .line 104
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->initAudioFocus()V

    .line 105
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->showCallBeginDisplay()V

    return-void
.end method

.method public onDecline()V
    .locals 2

    .line 315
    const-string v0, "CallFragment"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->onSlideOpen(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 259
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 231
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->stopRingtone()V

    return-void
.end method

.method public onPermissionOprateComplete(Z)V
    .locals 3

    .line 338
    const-string v0, "CallFragment"

    const-string v1, "onPermissionOprateComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-nez v0, :cond_2

    .line 340
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/VideoView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setHaveVoice(Z)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V

    .line 374
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    const-string v1, "video/magic_elves_call.mp4"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "accept"

    goto :goto_0

    :cond_1
    const-string p1, "refuse"

    :goto_0
    const-string v0, "cn.nubia.setupwizard"

    const-string v1, "Mora_call_camera_permission"

    const-string v2, "options"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onRequestPermission(I)V
    .locals 4

    .line 327
    const-string v0, "CallFragment"

    const-string v1, "onRequestPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->bitmapFristFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->viewDefaultBg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->bitmapFristFrame:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 332
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 271
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->previewController:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessage(I)Z

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->inflate:Landroid/view/View;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 218
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->playRingtone(J)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 236
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->videoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->imgHangUpPhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->exit(Z)V

    .line 239
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->callHandler:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->previewController:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->destroy()V

    .line 246
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 249
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->stopRingtone()V

    .line 250
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->releaseWakeLock()V

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz p0, :cond_5

    .line 252
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    :cond_5
    return-void
.end method
