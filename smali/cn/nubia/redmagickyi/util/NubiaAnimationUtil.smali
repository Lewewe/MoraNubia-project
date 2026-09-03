.class public Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;
.super Ljava/lang/Object;
.source "NubiaAnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 32
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_alpha:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->out_alpha:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static BottomAlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 6

    .line 102
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_of_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 103
    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->in_alpha:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 104
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 108
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v1
.end method

.method public static BottomAlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 6

    .line 113
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->out_of_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 114
    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->out_alpha:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 115
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 117
    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 119
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v1
.end method

.method public static BottomIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 40
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_of_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static BottomOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 44
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->out_of_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static LeftIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_of_left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static LeftOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 16
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->out_of_left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static RightIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_of_right:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static RightOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->out_of_right:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static ScaleIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 48
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_scale:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static ScaleOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    .line 52
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->out_scale:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static ScaleOutIn(Landroid/content/Context;Landroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 5

    .line 56
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->ScaleOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 57
    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_0

    .line 60
    new-instance v1, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;

    invoke-direct {v1, p1, p0, p2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil$1;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/content/Context;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object v0
.end method
