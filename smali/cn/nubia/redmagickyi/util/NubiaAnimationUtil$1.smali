.class Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;
.super Ljava/lang/Object;
.source "NubiaAnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->ScaleOutIn(Landroid/content/Context;Landroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$onScaleInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic val$onScaleOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation$AnimationListener;Landroid/content/Context;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->ScaleIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 69
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1$1;-><init>(Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;->val$onScaleOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    return-void
.end method
