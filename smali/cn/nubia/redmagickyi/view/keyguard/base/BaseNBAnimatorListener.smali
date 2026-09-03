.class public abstract Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;
.super Ljava/lang/Object;
.source "BaseNBAnimatorListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field protected mIsCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;->mIsCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;->mIsCancel:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;->mIsCancel:Z

    return-void
.end method
