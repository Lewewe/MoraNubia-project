.class Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;
.super Ljava/lang/Object;
.source "AlarmTypeSelectDialog.java"

# interfaces
.implements Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->initView(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isRolling:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->isRolling:Z

    return-void
.end method


# virtual methods
.method public itemCenterClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public itemClick(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$100(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$202(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;I)I

    return-void
.end method

.method public onItemCenterChanged(I)V
    .locals 14

    .line 140
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v3, 0x96

    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 143
    iget-object v5, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {v5}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$400(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$300(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$500()[I

    move-result-object v5

    aget p1, v5, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$300(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 149
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const v8, 0x3f4ccccc    # 0.79999995f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v0

    move v6, v8

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 153
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$300(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onMenuRollingStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$300(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$300(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->isRolling:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->isRolling:Z

    .line 128
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x96

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->this$0:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->access$400(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;->isRolling:Z

    :cond_1
    :goto_0
    return-void
.end method
