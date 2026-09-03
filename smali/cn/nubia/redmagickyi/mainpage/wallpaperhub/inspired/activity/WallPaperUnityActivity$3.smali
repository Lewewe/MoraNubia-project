.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;
.super Ljava/lang/Object;
.source "WallPaperUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->parseMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 276
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 279
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_1

    .line 281
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 288
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 291
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->fadeOut(Landroid/view/View;J)V

    return-void
.end method
