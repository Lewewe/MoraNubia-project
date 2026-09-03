.class public Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;
.super Ljava/lang/Object;
.source "HeadsetPlugUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;,
        Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPlugUtil"


# instance fields
.field private headsetPlugReceiver:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;

.field private mContext:Landroid/content/Context;

.field private mHeadsetPlugListener:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->mHeadsetPlugListener:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->mHeadsetPlugListener:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;

    return-object p0
.end method


# virtual methods
.method public RegiestHeadsPlug()V
    .locals 3

    .line 67
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;-><init>(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->headsetPlugReceiver:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->headsetPlugReceiver:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public UnRegiestHeadsPlug()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->headsetPlugReceiver:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
