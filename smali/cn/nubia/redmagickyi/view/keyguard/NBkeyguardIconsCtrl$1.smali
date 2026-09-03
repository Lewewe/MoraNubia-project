.class Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NBkeyguardIconsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPromitingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 433
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$900(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Landroid/animation/AnimatorSet;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void
.end method
