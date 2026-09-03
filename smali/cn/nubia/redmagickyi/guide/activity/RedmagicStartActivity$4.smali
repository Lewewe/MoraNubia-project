.class Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$4;
.super Ljava/lang/Object;
.source "RedmagicStartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->ClearWallPaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$4;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 360
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$4;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setIamgeWallpaper(Landroid/content/Context;)V

    return-void
.end method
