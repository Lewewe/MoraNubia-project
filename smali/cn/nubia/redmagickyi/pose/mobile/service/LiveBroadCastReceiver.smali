.class public Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LiveBroadCastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "intent.action.redmagickyi.pose.livemode"

.field public static final LIVE_MOBILE_RECREATE_ACTION:Ljava/lang/String; = "intent.action.redmagickyi.pose.mobile.recreate"

.field public static final LIVE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "intent.action.redmagickyi.pose.settings.changed"

.field public static final LIVE_SETTING_CHANGED_KEY_LIVE_MODE:Ljava/lang/String; = "live_mode"

.field public static final LIVE_SETTING_CHANGED_KEY_LIVE_MODE_VALUE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final LIVE_SETTING_CHANGED_KEY_LIVE_MODE_VALUE_PC:Ljava/lang/String; = "pc"

.field private static final TAG:Ljava/lang/String; = "LiveBroadCastReceiver"


# instance fields
.field private liveBroadCastMessage:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receive action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liveBroadCastMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;->liveBroadCastMessage:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveBroadCastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "intent.action.redmagickyi.pose.livemode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string p1, "livemode"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;->liveBroadCastMessage:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;

    if-eqz p0, :cond_2

    .line 35
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;->receiveLiveMode(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "intent.action.redmagickyi.pose.mobile.recreate"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const-string v0, "intent.action.redmagickyi.pose.mobile"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 41
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "intent.action.redmagickyi.pose.settings.changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;->liveBroadCastMessage:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;

    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;->onLiveSettingsChanged(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLiveBroadCastMessage(Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;->liveBroadCastMessage:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;

    return-void
.end method
