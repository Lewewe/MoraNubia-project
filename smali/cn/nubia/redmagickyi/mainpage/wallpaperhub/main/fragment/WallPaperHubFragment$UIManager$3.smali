.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;
.super Ljava/lang/Object;
.source "WallPaperHubFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->onMoreClick(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 0

    .line 433
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    return-void
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z
    .locals 0

    .line 428
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z

    move-result p0

    return p0
.end method

.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method

.method public onMoreClick(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;)V"
        }
    .end annotation

    .line 448
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->onMoreClick(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onSwitchCheckClick(Landroid/view/View;Z)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->onSwitchCheckClick(Landroid/view/View;Z)V

    return-void
.end method

.method public onSwitchCheckTouch(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 443
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->onSwitchCheckTouch(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
