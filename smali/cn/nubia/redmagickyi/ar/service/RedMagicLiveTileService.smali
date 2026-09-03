.class public Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;
.super Landroid/service/quicksettings/TileService;
.source "RedMagicLiveTileService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RedMagicLiveTileService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method public static getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 93
    const-string v0, "onBind"

    const-string v1, "RedMagicLiveTileService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
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

    .line 68
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 69
    const-string v0, "RedMagicLiveTileService"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "first"

    invoke-static {p0, v3, v2}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer;->isNeedCheckCTA()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "first_live"

    invoke-static {p0, v3, v2}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "intent.action.redmagickyi.main"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v2, "from_quick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "intent.action.redmagickyi.live"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x10000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 119
    const-string p0, "RedMagicLiveTileService"

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    .line 30
    const-string p0, "RedMagicLiveTileService"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onRebind(Landroid/content/Intent;)V

    .line 107
    const-string p0, "RedMagicLiveTileService"

    const-string p1, "onRebind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 112
    const-string v0, "RedMagicLiveTileService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/service/quicksettings/TileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onStartListening()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 53
    const-string v0, "RedMagicLiveTileService"

    const-string v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 57
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 63
    const-string p0, "RedMagicLiveTileService"

    const-string v0, "onStopListening"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 36
    const-string v0, "RedMagicLiveTileService"

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 40
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method

.method public onTileRemoved()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    .line 47
    const-string p0, "RedMagicLiveTileService"

    const-string v0, "onTileRemoved"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    .line 125
    const-string p0, "RedMagicLiveTileService"

    const-string p1, "startActivity"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
