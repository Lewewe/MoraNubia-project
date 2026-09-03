.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$1;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;
.source "StaticsPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->setWallpaper(ILjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 480
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 488
    const-string p0, "StaticsPreviewActivity"

    const-string p1, "report wallpaper used failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;)V
    .locals 0

    .line 483
    const-string p0, "StaticsPreviewActivity"

    const-string p1, "report wallpaper used success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 480
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager$1;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;)V

    return-void
.end method
