.class Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;
.super Ljava/lang/Object;
.source "WallPaperUnityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->initWallPaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 182
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$002(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v1, "bm != null!!"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->BitmaptoString(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getImageWallPaperCache(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$102(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v2, v4, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getImageWallPaperCache(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$202(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$202(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iput-boolean v1, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bitmapTostring:Z

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v4, v2, :cond_1

    move v3, v1

    :cond_1
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$300(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v0, "bm to Json error!!"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
