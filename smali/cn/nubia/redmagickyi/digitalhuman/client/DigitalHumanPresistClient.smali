.class public Lcn/nubia/redmagickyi/digitalhuman/client/DigitalHumanPresistClient;
.super Landroid/app/Service;
.source "DigitalHumanPresistClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DigitalHumanPresistClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 28
    const-string p0, "DigitalHumanPresistClient"

    const-string p1, "onBind"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    const-string v0, "DigitalHumanPresistClient"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;->mine()Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->bindService(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 34
    const-string v0, "DigitalHumanPresistClient"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
