.class Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;
.source "NBkeyguardIconsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorPressedUpTargetIconListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 624
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 628
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$1200(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setVisibility(Z)V

    .line 629
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$1200(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setIsClipping(Z)V

    .line 630
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$1200(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setScale(F)V

    .line 631
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$1300(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setVisibility(Z)V

    return-void
.end method
