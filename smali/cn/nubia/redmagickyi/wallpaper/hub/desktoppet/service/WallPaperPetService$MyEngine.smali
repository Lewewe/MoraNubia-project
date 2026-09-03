.class public Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "WallPaperPetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyEngine"
.end annotation


# static fields
.field private static final DOWN_CLICK_AREA_URI:Ljava/lang/String; = "content://cn.nubia.launcher.unreadMark/unreadMark"

.field private static final IS_TOUCH_AREA:Ljava/lang/String; = "isTouchArea"

.field private static final POINT_KEY:Ljava/lang/String; = "downPoints"

.field private static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field isPreview:Z

.field mHolder:Landroid/view/SurfaceHolder;

.field savedSkinId:Ljava/lang/Integer;

.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    const/4 p1, 0x0

    .line 346
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview:Z

    return-void
.end method


# virtual methods
.method public getDownPointCanTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 501
    const-string v0, "WallPaperPetService"

    .line 0
    const-string v1, "getDownPointCanTouchEvent end, resultOnclik:"

    const-string v2, "call DOWN_CLICK_AREA_URI result:"

    const-string v3, "getDownPointCanTouchEvent begin, on "

    const/4 v4, 0x1

    .line 501
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    .line 506
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 508
    const-string v5, "downPoints"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 509
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "content://cn.nubia.launcher.unreadMark/unreadMark"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "isTouchArea"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 513
    const-string p1, "result"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 518
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getDownPointCanTouchEvent error:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    .line 367
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    const/high16 p0, -0x1000000

    .line 373
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 374
    new-instance v0, Landroid/app/WallpaperColors;

    invoke-direct {v0, p0, p0, p0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    const-string v1, "Create"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 351
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 352
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview:Z

    const/4 p1, 0x1

    .line 353
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->setTouchEventsEnabled(Z)V

    const/4 p1, 0x0

    .line 354
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->setOffsetNotificationsEnabled(Z)V

    .line 355
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "AppController"

    const-string v0, "TriggerIsWallpaper"

    invoke-static {p1, v0, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    const-string v1, "Destroy"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 362
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SurfaceChanged, width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 387
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 388
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 389
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    if-gt p3, p4, :cond_1

    .line 390
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 392
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    if-lt p3, p4, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$300(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    const-string v1, "SurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 380
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 381
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    const-string v1, "SurfaceDestroyed"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 462
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 463
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->getDownPointCanTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->canOnClickToUnity:Z

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    iput-boolean v1, v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->canOnClickToUnity:Z

    .line 474
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "touch occur, canOnClickToUnity = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    iget-boolean v2, v2, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->canOnClickToUnity:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallPaperPetService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->canOnClickToUnity:Z

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$900(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 481
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 483
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    goto :goto_1

    .line 486
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    .line 489
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 5

    .line 397
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VisibilityChanged, isPreview: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 398
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$402(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)Z

    const/16 v0, 0x44e

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 401
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$508(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I

    .line 402
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 403
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result p1

    const-string v3, "WallPaperPetService"

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$602(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)Z

    .line 405
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 406
    const-string p1, "onVisibilityChanged resume"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$600(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 408
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$602(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)Z

    .line 409
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 410
    const-string p1, "onVisibilityChanged FIRST_START resume"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$700(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result p1

    .line 414
    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->savedSkinId:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 415
    :cond_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {v3}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$700(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->setPetStyle(IZ)V

    .line 418
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 419
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->sendSceneConfigToUnity(Landroid/content/Context;)V

    .line 421
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v3

    invoke-virtual {p1, v3, v1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    .line 422
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview:Z

    if-eqz p1, :cond_4

    const-string p1, "true"

    goto :goto_1

    :cond_4
    const-string p1, "false"

    :goto_1
    const-string v3, "AppController"

    const-string v4, "TriggerVisible"

    invoke-static {v3, v4, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_6

    .line 425
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 427
    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le v4, p1, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$300(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)V

    .line 431
    :cond_6
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;-><init>()V

    .line 432
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setMsgID(I)V

    .line 433
    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setScale(I)V

    .line 434
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 436
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->isPreview:Z

    if-nez p1, :cond_7

    .line 437
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$800(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V

    :cond_7
    return-void

    .line 441
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$510(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I

    .line 442
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$502(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;I)I

    .line 443
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I

    move-result p1

    if-nez p1, :cond_a

    .line 445
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 446
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->modleinitfinish:Z

    if-eqz p1, :cond_a

    .line 447
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result p1

    if-nez p1, :cond_9

    .line 449
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;-><init>()V

    .line 450
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setMsgID(I)V

    .line 451
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setScale(I)V

    .line 452
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 454
    :cond_9
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->WallPaperStop(Lcom/unity3d/player/UnityPlayer;)V

    :cond_a
    return-void
.end method
