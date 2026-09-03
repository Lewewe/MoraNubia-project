.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;
.super Ljava/lang/Object;
.source "StaticsPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->customSetWallpaper(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 535
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 538
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->access$1400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    move p2, p1

    .line 552
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :try_start_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    .line 554
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    iget-object p2, p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_set_success:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 552
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 556
    :catch_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$3;->val$file:Ljava/io/File;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->access$1500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;Ljava/io/File;)V

    :goto_2
    return-void
.end method
