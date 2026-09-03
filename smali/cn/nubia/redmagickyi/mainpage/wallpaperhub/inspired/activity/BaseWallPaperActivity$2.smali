.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;
.super Landroid/os/AsyncTask;
.source "BaseWallPaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->initWallPaperLanucher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final URI_LAUNCHER_SHORTCUT:Ljava/lang/String; = "content://cn.nubia.launcher.settings/favorites"


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 76
    const-string p1, "WallPaperUnityActivity"

    .line 0
    const-string v0, "initWallPaperLanucher Exception\uff1a"

    const/4 v1, 0x0

    .line 76
    :try_start_0
    const-string v2, "content://cn.nubia.launcher.settings/favorites"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wallpaper"

    const-string v5, "screenShot"

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    const-string v4, "screenShot_white"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$002(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 79
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    const-string v4, "screenShot_black"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$102(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 80
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-virtual {v2, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->isNight(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "isNight\uff1a"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$202(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 84
    :cond_0
    const-string v2, "isWhite\uff1a"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$202(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 87
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "launcherBitmap != null\uff1a"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 91
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;->setLauncherBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-object v1

    .line 94
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;->setLauncherBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :cond_3
    throw p1
.end method
