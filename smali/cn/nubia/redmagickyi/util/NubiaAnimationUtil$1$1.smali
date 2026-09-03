.class Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;
.super Ljava/lang/Object;
.source "NubiaAnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;->this$0:Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;->this$0:Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;->this$0:Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;->this$0:Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    return-void
.end method
