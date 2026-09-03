.class Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;
.super Ljava/lang/Object;
.source "VisualSettingFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->initview(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 147
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->access$100(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->access$200(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 153
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->access$200(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
