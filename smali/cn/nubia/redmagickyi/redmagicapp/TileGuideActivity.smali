.class public Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;
.super Landroid/app/Activity;
.source "TileGuideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TileGuideActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 22
    const-string v0, "android.intent.extra.COMPONENT_NAME"

    const-string v1, "TileGuideActivity"

    .line 0
    const-string v2, "componentName: "

    const-string v3, "action: "

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string p1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 28
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-class v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTileService;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto/16 :goto_0

    .line 34
    :cond_0
    const-class v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/service/AccompanyTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/service/AccompanyTileService;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto/16 :goto_0

    .line 38
    :cond_1
    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandTileService;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_0

    .line 42
    :cond_2
    const-class v0, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/ar/service/RedMagicLiveTileService;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    goto :goto_0

    .line 45
    :cond_3
    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedMagicMainTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedMagicMainTileService;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TileGuideActivity;->finish()V

    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    :cond_5
    :goto_0
    return-void
.end method
