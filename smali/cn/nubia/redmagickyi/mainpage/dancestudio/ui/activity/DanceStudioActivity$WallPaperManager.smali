.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallPaperManager"
.end annotation


# instance fields
.field private final WALLPAPER_TEMP_DIR:Ljava/io/File;

.field private targetFile:Ljava/io/File;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 515
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance p1, Ljava/io/File;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->targetFile:Ljava/io/File;

    .line 518
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->STORAGE_CACHE_HIDEN_ROOT:Ljava/lang/String;

    const-string v1, "wallpaper"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->WALLPAPER_TEMP_DIR:Ljava/io/File;

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)Ljava/io/File;
    .locals 0

    .line 515
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->getTempFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)Ljava/io/File;
    .locals 0

    .line 515
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->targetFile:Ljava/io/File;

    return-object p0
.end method

.method private checkFileDiff()Ljava/io/File;
    .locals 3

    .line 550
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->WALLPAPER_TEMP_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->WALLPAPER_TEMP_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 553
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->WALLPAPER_TEMP_DIR:Ljava/io/File;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 560
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 p0, 0x0

    .line 561
    aget-object p0, v0, p0

    return-object p0

    .line 563
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->targetFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTempFile()Ljava/io/File;
    .locals 2

    .line 568
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->targetFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".temp"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public gotoMediaEditor(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .line 521
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const-class v2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 523
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->WALLPAPER_TEMP_DIR:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dancestudio_wallpaper_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->targetFile:Ljava/io/File;

    .line 524
    const-string p2, "video/*"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string p1, "full_screen"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 526
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->getTempFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "video_save_uri"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/16 p1, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 533
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->getTempFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->getTempFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 536
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->checkFileDiff()Ljava/io/File;

    move-result-object p1

    .line 537
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->getTempFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 538
    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/4 v0, 0x1

    const/16 v1, 0x3ea

    invoke-static {p3, p1, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->setLiveWallPaperNotSurpportRemagicOS(Landroid/app/Activity;Ljava/io/File;ZI)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    const-string p1, "DanceStudioActivity"

    const-string p3, "rename wallpaper file error"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->edit_error:I

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 544
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->edit_error:I

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
