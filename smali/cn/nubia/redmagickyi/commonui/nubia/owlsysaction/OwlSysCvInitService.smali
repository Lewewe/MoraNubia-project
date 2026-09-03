.class public Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysCvInitService;
.super Landroid/app/IntentService;
.source "OwlSysCvInitService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gcs:OwlSysCvInitService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    const-string v0, "Settings:OwlSysCvInitService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 20
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 21
    const-string p0, "gcs:OwlSysCvInitService"

    const-string v0, "OwlSysCvInitService onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 25
    const-string v0, "gcs:OwlSysCvInitService"

    const-string v1, "OwlSysCvInitService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 31
    const-string v0, "gcs:OwlSysCvInitService"

    const-string v1, "OwlSysCvInitService onHandleIntent initOwlCv."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysCvInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->initOwlCv()V

    :cond_0
    return-void
.end method
