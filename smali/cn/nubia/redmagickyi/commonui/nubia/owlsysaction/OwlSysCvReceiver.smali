.class public Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysCvReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OwlSysCvReceiver.java"


# static fields
.field private static final ACTION_OWL_FISTBOOTDAY:Ljava/lang/String; = "cn.nubia.owlsystem.firstbootdayaction"

.field private static final ACTION_OWL_FISTBOOT_ZTE:Ljava/lang/String; = "com.zte.analytics.action.FIRST_BOOT"

.field private static final ACTION_OWL_ONEDAY_ZTE:Ljava/lang/String; = "com.zte.analytics.action.ONE_DAY"

.field private static final TAG:Ljava/lang/String; = "gcs:OwlSysCvReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "gcs Settings receive Reboot or Update msg, action is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gcs:OwlSysCvReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "cn.nubia.owlsystem.firstbootdayaction"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.zte.analytics.action.FIRST_BOOT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.zte.analytics.action.ONE_DAY"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 22
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysCvInitService;

    invoke-direct {p0, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->initOwlCv()V

    :cond_3
    :goto_1
    return-void
.end method
