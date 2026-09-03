.class public Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "WallPaperUnityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;
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
.field private isClickAreaUriInvalid:Z

.field isPreview:Z

.field mHolder:Landroid/view/SurfaceHolder;

.field savedSkinId:Ljava/lang/Integer;

.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    const/4 p1, 0x0

    .line 672
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview:Z

    .line 881
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isClickAreaUriInvalid:Z

    return-void
.end method


# virtual methods
.method public getDownPointCanTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 885
    const-string v0, "WallPaperUnityService"

    .line 0
    const-string v1, "getDownPointCanTouchEvent end, resultOnclik:"

    const-string v2, "call DOWN_CLICK_AREA_URI result:"

    const-string v3, "getDownPointCanTouchEvent begin, on "

    const/4 v4, 0x1

    .line 885
    :try_start_0
    iget-boolean v5, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isClickAreaUriInvalid:Z

    if-nez v5, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 891
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    .line 894
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 896
    const-string v5, "downPoints"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 897
    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://cn.nubia.launcher.unreadMark/unreadMark"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "isTouchArea"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 901
    const-string v2, "result"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    :goto_0
    return v4

    :catch_0
    move-exception p1

    .line 906
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDownPointCanTouchEvent error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown authority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 910
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isClickAreaUriInvalid:Z

    :cond_2
    return v4
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    .line 705
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    const/high16 p0, -0x1000000

    .line 711
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 712
    new-instance v0, Landroid/app/WallpaperColors;

    invoke-direct {v0, p0, p0, p0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v1, "Create"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 677
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 678
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview:Z

    const/4 p1, 0x1

    .line 679
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->setTouchEventsEnabled(Z)V

    const/4 p1, 0x0

    .line 680
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->setOffsetNotificationsEnabled(Z)V

    .line 681
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 682
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "AppController"

    const-string v0, "TriggerIsWallpaper"

    invoke-static {p1, v0, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v1, "Destroy"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 692
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 694
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$002(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 699
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 724
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

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

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 725
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 726
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 727
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    if-gt p3, p4, :cond_1

    .line 728
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 729
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 732
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    if-lt p3, p4, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$300(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 717
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v1, "SurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 718
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 719
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 834
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v1, "SurfaceDestroyed"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 835
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 836
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 837
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 839
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 845
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->canOnClickToUnity:Z

    goto :goto_0

    .line 847
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->getDownPointCanTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->canOnClickToUnity:Z

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iput-boolean v1, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->canOnClickToUnity:Z

    .line 852
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "touch occur, canOnClickToUnity = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-boolean v2, v2, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->canOnClickToUnity:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallPaperUnityService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->canOnClickToUnity:Z

    if-eqz v0, :cond_5

    .line 855
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1800(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 859
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 861
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 862
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    goto :goto_1

    .line 866
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 867
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    .line 871
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VisibilityChanged, isPreview: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 738
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    .line 740
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bindShakeListener()V

    goto :goto_0

    .line 742
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->unbindShakeListener()V

    .line 744
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bitmapTostring:Z

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1300(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    .line 747
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$502(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z

    .line 748
    const-string v0, "WallPaperUnityService"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    const-string v1, "onVisibilityChanged start care"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->StartDelayedCareTime()V

    goto :goto_1

    .line 752
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-eqz v1, :cond_3

    .line 753
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->StopCare()V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 757
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1408(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I

    .line 758
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 759
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 761
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 762
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1502(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z

    .line 763
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 764
    const-string p1, "onVisibilityChanged resume"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 765
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1500(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 766
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1502(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z

    .line 767
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 768
    const-string p1, "onVisibilityChanged FIRST_START resume"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_6
    :goto_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkin(Landroid/content/Context;)I

    move-result p1

    .line 772
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->savedSkinId:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 773
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->savedSkinId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    .line 776
    :cond_8
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 777
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->sendSceneConfigToUnity(Landroid/content/Context;)V

    .line 779
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    .line 780
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 781
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview:Z

    if-eqz p1, :cond_9

    const-string p1, "true"

    goto :goto_3

    :cond_9
    const-string p1, "false"

    :goto_3
    const-string v0, "AppController"

    const-string v3, "TriggerVisible"

    invoke-static {v0, v3, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_a
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/track/InspiredTrackManager;->sendEvent()V

    .line 787
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_d

    .line 788
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 790
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le v0, p1, :cond_b

    move p1, v2

    goto :goto_4

    :cond_b
    move p1, v1

    .line 791
    :goto_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->lastBgOrientation:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    :goto_5
    move v1, v2

    goto :goto_6

    .line 793
    :cond_c
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->lastBgOrientation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_d

    goto :goto_5

    :cond_d
    :goto_6
    if-eqz v1, :cond_f

    .line 800
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    .line 801
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 802
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_e

    const-wide/16 v2, 0x1f4

    :cond_e
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 804
    :cond_f
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    .line 808
    :goto_7
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->isPreview:Z

    if-nez p1, :cond_10

    .line 809
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1700(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    :cond_10
    return-void

    :cond_11
    if-nez p1, :cond_12

    .line 814
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 816
    :cond_12
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1410(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I

    .line 817
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1400(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1402(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;I)I

    .line 818
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1400(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I

    move-result p1

    if-nez p1, :cond_14

    .line 820
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 821
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 823
    :cond_13
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->modleinitfinish:Z

    if-eqz p1, :cond_14

    .line 825
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    .line 827
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->WallPaperStop(Lcom/unity3d/player/UnityPlayer;)V

    :cond_14
    return-void
.end method
