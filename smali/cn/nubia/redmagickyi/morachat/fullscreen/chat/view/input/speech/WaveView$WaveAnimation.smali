.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;
.super Ljava/lang/Object;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveAnimation"
.end annotation


# instance fields
.field private alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private animIn:Landroid/view/animation/AnimationSet;

.field private animOut:Landroid/view/animation/AnimationSet;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

.field private translateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)V

    return-void
.end method


# virtual methods
.method public get()Landroid/view/animation/Animation;
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    :goto_0
    return-object v0
.end method

.method public in(Landroid/view/animation/Animation$AnimationListener;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;
    .locals 5

    .line 130
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    .line 131
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v4

    add-float/2addr v2, v4

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object p0
.end method

.method public out(Landroid/view/animation/Animation$AnimationListener;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;
    .locals 5

    .line 142
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    .line 143
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v4

    add-float/2addr v2, v4

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object p0
.end method

.method public updateTranslateAnimation()V
    .locals 7

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animIn:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 157
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 158
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    if-ne v4, v5, :cond_0

    .line 159
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {v4, v2, v2, v5, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->animOut:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 168
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    if-ne v3, v4, :cond_2

    .line 169
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v3, v2, v2, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
