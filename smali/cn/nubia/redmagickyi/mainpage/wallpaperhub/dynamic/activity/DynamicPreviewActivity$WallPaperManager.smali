.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;
.super Ljava/lang/Object;
.source "DynamicPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallPaperManager"
.end annotation


# instance fields
.field public final WALLPAPER_TEMP_DIR:Ljava/io/File;

.field private currentSetWallPaperClass:Ljava/lang/Class;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->STORAGE_CACHE_HIDEN_ROOT:Ljava/lang/String;

    const-string v1, "wallpaper"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->WALLPAPER_TEMP_DIR:Ljava/io/File;

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;)Ljava/lang/Class;
    .locals 0

    .line 508
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->currentSetWallPaperClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 508
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->currentSetWallPaperClass:Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method public gotoSystemPreview(ILjava/io/File;)V
    .locals 3

    .line 516
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isWallPaperHubDynamicPreviewMute(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v0, p2, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->setLiveWallPaperNotSurpportRemagicOS(Landroid/app/Activity;Ljava/io/File;ZI)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->currentSetWallPaperClass:Ljava/lang/Class;

    .line 518
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;)V

    .line 528
    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager$1;->load(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;

    return-void
.end method
