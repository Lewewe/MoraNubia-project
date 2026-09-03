.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils$1;
.super Ljava/lang/Object;
.source "LiveWallPaperUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->handleLiveWallPaperChanged([Landroid/app/WallpaperInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wallpaperServiceClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils$1;->val$wallpaperServiceClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils$1;->val$wallpaperServiceClass:Ljava/lang/Class;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getWallpaperDMFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils$1;->val$wallpaperServiceClass:Ljava/lang/Class;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getWallpaperFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object p0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/CopyVideoFile;->getFilePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 175
    const-string p0, "LiveWallPaperUtils"

    const-string v0, "copy video file success"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
