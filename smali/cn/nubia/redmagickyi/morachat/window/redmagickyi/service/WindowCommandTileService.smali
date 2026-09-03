.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;
.super Landroid/service/quicksettings/TileService;
.source "WindowCommandTileService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandTileService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private getClickIntent()Landroid/content/Intent;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tile_wakeup_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->createWakeupIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 91
    const-string v0, "onBind"

    const-string v1, "WindowCommandTileService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBind error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onClick()V
    .locals 4

    .line 67
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 68
    const-string v0, "WindowCommandTileService"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->getClickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 117
    const-string p0, "WindowCommandTileService"

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    .line 29
    const-string p0, "WindowCommandTileService"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onRebind(Landroid/content/Intent;)V

    .line 105
    const-string p0, "WindowCommandTileService"

    const-string p1, "onRebind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 110
    const-string v0, "WindowCommandTileService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/service/quicksettings/TileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onStartListening()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 52
    const-string v0, "WindowCommandTileService"

    const-string v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 56
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 62
    const-string p0, "WindowCommandTileService"

    const-string v0, "onStopListening"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 35
    const-string v0, "WindowCommandTileService"

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 39
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onTileRemoved()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    .line 46
    const-string p0, "WindowCommandTileService"

    const-string v0, "onTileRemoved"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    .line 123
    const-string p0, "WindowCommandTileService"

    const-string p1, "startActivity"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
