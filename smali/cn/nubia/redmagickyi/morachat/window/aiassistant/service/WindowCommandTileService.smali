.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;
.super Landroid/service/quicksettings/TileService;
.source "WindowCommandTileService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowCommandTileService-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private getClickIntent()Landroid/content/Intent;
    .locals 1

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tile_wakeup_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->createWakeupIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 89
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onClick()V
    .locals 4

    .line 66
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 67
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->getClickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 115
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    .line 28
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onRebind(Landroid/content/Intent;)V

    .line 103
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string p1, "onRebind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 108
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/service/quicksettings/TileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onStartListening()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 51
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 55
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 61
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v0, "onStopListening"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 34
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 38
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onTileRemoved()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    .line 45
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string v0, "onTileRemoved"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    .line 121
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->TAG:Ljava/lang/String;

    const-string p1, "startActivity"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
