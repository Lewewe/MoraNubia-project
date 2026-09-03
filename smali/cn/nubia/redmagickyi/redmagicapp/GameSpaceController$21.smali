.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateFriendValueLayoutState(ZIILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

.field final synthetic val$level:I

.field final synthetic val$online:Z

.field final synthetic val$score:I

.field final synthetic val$value:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;ZIILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1887
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$online:Z

    iput p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$score:I

    iput p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$level:I

    iput-object p5, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$value:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update friend-value state, touchable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", online "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$online:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", score = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$value:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameSpaceActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    sget-boolean v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    if-eqz v1, :cond_0

    return-void

    .line 1894
    :cond_0
    iget v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$score:I

    .line 1895
    iget v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$level:I

    .line 1896
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$value:Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 1898
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-wide/16 v7, 0x258

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-ltz v4, :cond_2

    .line 1899
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setType(I)V

    .line 1900
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "+"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$value:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1901
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->clearAnimation()V

    .line 1902
    invoke-static {}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getEffectedMotionPoint()[F

    move-result-object v4

    .line 1903
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1904
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    aget v13, v4, v5

    iget-object v14, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v14}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    aget v14, v4, v5

    iget-object v15, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v15}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    aget v15, v4, v6

    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    aget v4, v4, v6

    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v5, v5, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_17_dp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v12, v13, v14, v15, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1905
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1906
    invoke-virtual {v11, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1907
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1908
    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$1;

    invoke-direct {v4, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;)V

    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1923
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1924
    :cond_2
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$value:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    .line 1925
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setType(I)V

    .line 1926
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->val$value:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->clearAnimation()V

    .line 1928
    invoke-static {}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getEffectedMotionPoint()[F

    move-result-object v4

    .line 1929
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1930
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    aget v12, v4, v11

    iget-object v13, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v13}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    aget v13, v4, v11

    iget-object v11, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v11}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v13, v11

    const/4 v11, 0x1

    aget v14, v4, v11

    iget-object v15, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v15}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    iget-object v15, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v15}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingBottom()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    aget v4, v4, v11

    iget-object v11, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v11, v11, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v11}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v15, Lcn/nubia/redmagickyi/main/R$dimen;->ns_17_dp:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    iget-object v11, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v11}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v4, v11

    iget-object v11, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v11}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingBottom()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v4, v11

    invoke-direct {v6, v12, v13, v14, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1931
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1932
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1933
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1934
    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$2;

    invoke-direct {v4, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;)V

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1949
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1952
    :cond_3
    :goto_0
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1953
    sget-object v4, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    sget-object v6, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget v4, v4, v6

    add-int/lit8 v6, v3, -0x1

    if-gtz v6, :cond_4

    .line 1956
    sget-object v6, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    aget v6, v6, v5

    goto :goto_1

    .line 1958
    :cond_4
    sget-object v5, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    sget-object v7, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget v5, v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 1960
    :goto_1
    sget-object v5, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    array-length v5, v5

    if-eq v3, v5, :cond_5

    .line 1961
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1963
    :cond_5
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v7, v7, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->friend_value_level_max:I

    invoke-virtual {v7, v8}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    :goto_2
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v7, v7, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v8, 0x64

    if-lt v3, v8, :cond_6

    sget v8, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    goto :goto_3

    :cond_6
    const/16 v8, 0xa

    if-lt v3, v8, :cond_7

    sget v8, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    goto :goto_3

    :cond_7
    sget v8, Lcn/nubia/redmagickyi/main/R$dimen;->ns_22_dp:I

    :goto_3
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1966
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1967
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v5

    iget-object v7, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v7, v7, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mora_like_rank"

    const-string v9, "mora_level"

    invoke-virtual {v5, v7, v8, v9, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1968
    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    .line 1969
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1970
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1971
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 1972
    iget-object v5, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 1973
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update friend-value state, max = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMin()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastMax = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v3, v4, :cond_8

    .line 1975
    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1976
    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    :cond_8
    if-le v3, v4, :cond_9

    .line 1978
    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1979
    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1981
    :cond_9
    :goto_4
    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 1982
    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method
