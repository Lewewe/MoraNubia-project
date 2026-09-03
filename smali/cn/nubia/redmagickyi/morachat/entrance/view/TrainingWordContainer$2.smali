.class Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$2;
.super Ljava/lang/Object;
.source "TrainingWordContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$2;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 88
    const-string p1, "TrainingWordContainer"

    const-string v0, "onAnimationEnd sToB"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$2;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    const/4 v0, 0x1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$000(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;ZLandroid/widget/FrameLayout;)V

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$2;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    const/4 p1, 0x0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$200(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;ZLandroid/widget/FrameLayout;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
