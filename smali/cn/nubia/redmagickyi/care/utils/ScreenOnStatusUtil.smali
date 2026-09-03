.class public Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;
.super Ljava/lang/Object;
.source "ScreenOnStatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;,
        Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOnStatusUtil"


# instance fields
.field private context:Landroid/content/Context;

.field public listener:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;

.field private screenOnChangeReceiver:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public StartScreenBrocastReceiver()V
    .locals 3

    .line 43
    new-instance v0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;-><init>(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->screenOnChangeReceiver:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->screenOnChangeReceiver:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;

    if-eqz v1, :cond_0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public UnRegisterReceiver()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->screenOnChangeReceiver:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public setScreenOnStatusListener(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->listener:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;

    return-void
.end method
