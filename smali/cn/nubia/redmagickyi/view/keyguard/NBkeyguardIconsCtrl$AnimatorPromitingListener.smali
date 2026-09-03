.class Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;
.source "NBkeyguardIconsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorPromitingListener"
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

    .line 614
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBAnimatorListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 618
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;->mIsCancel:Z

    if-nez p1, :cond_0

    .line 619
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$1100(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
