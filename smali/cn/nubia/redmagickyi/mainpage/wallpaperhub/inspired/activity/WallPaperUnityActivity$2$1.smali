.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2$1;
.super Ljava/lang/Object;
.source "WallPaperUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;->setLauncherBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;Landroid/graphics/Bitmap;)V
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

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
